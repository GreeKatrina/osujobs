class RemovePostingUpdatedDateFromJobs < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :posting_updated_date, :datetime
  end
end
