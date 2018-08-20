class CreateJobQuestionOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :job_question_options do |t|
      t.integer :job_question_id
      t.string :option

      t.timestamps
    end
  end
end
