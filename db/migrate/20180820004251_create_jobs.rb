class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :top_message
      t.text :message_to_applicants
      t.integer :num_positions_available
      t.string :university_title
      t.string :working_title
      t.string :department
      t.string :department_location
      t.integer :requisition_number
      t.text :summary_of_duties
      t.text :add_info_for_applicants
      t.string :pre_employment_screening
      t.text :required_qualifications
      t.text :desired_qualifications
      t.string :target_salary
      t.string :job_category
      t.string :job_appointment
      t.boolean :full_time
      t.boolean :temporary
      t.datetime :posting_start_date
      t.datetime :posting_end_date
      t.string :dept_contact_name
      t.string :dept_contact_phone
      t.string :link

      t.timestamps
    end
  end
end
