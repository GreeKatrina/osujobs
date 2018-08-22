class AddEntryIdToJobs < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :entry_id, :string
    add_index :jobs, :entry_id, unique: true
  end
end
