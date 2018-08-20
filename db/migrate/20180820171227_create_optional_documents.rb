class CreateOptionalDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :optional_documents do |t|
      t.integer :job_id
      t.string :document

      t.timestamps
    end
  end
end
