namespace :sync do

    task jobs: [:environment] do

        url = "https://www.jobsatosu.com/all_jobs.atom"
        xml = HTTParty.get(url).body

        Feedjira::Feed.parse(xml).entries.each do |entry|

            job = Job.find_by(:entry_id => entry.entry_id)

            if job.nil?
                job = Job.new(entry_id: entry.entry_id)
                job.entry_updated = entry.updated if entry.updated.is_a? Time
            else
                # next unless entry.updated != job.entry_updated
                job.entry_updated = entry.updated
            end

            job.link = entry.url
            job.title = entry.title
            job.entry_published = entry.published

            page = Nokogiri::HTML(open(job.link))

            page.css('div.form_container').first.css('tr').each do |row|

                value = row.at_css('td').text.strip
                title = row.at_css('th').text.strip
                func = title.titleize.remove(' ').gsub(/[\/:]/, '').underscore

                if title == 'Full/Part Time'
                    func = 'full_time'
                    value = value.downcase.include?('full')
                elsif title == 'Temporary or Regular'
                    func = 'temporary'
                    value = value.downcase.include?('temporary')
                elsif title == 'Posting Start Date' or title == 'Posting End Date'
                    value = Date.strptime(value, '%m/%d/%Y').to_time(:utc) unless value.empty?
                elsif title == 'Dept Contact Phone'
                    value = value.gsub(/\D/, '')
                elsif title != 'Department' and title != 'Target Salary' and title != 'Dept Contact Name'
                    next
                end

                job.send("#{func}=", value)

            end

            job.save

        end

    end

end
