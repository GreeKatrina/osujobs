class CreateJobQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :job_questions do |t|
      t.integer :job_id
      t.string :question

      t.timestamps
    end
  end
end
