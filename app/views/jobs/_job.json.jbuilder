json.extract! job, :id, :title, :top_message, :message_to_applicants, :num_positions_available, :university_title, :working_title, :department, :department_location, :requisition_number, :summary_of_duties, :add_info_for_applicants, :pre_employment_screening, :required_qualifications, :desired_qualifications, :target_salary, :job_category, :job_appointment, :full_time, :temporary, :posting_start_date, :posting_end_date, :dept_contact_name, :dept_contact_phone, :link, :created_at, :updated_at
json.url job_url(job, format: :json)
