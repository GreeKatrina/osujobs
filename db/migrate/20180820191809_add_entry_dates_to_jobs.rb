class AddEntryDatesToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :entry_published, :datetime, null: false, default: 0
    add_column :jobs, :entry_updated, :datetime, null: false, default: 0
  end
end
