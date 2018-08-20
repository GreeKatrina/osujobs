class CreateRequiredDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :required_documents do |t|
      t.integer :job_id
      t.string :document

      t.timestamps
    end
  end
end
