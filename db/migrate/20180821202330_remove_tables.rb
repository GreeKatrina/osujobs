class RemoveTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :job_question_options
    drop_table :job_questions
    drop_table :required_documents
    drop_table :optional_documents
  end
end
