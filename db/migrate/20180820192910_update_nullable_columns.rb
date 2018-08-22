class UpdateNullableColumns < ActiveRecord::Migration[5.2]
  def change
    change_column :jobs, :title, :string, null: false, default: ''
    change_column :jobs, :top_message, :string, null: false, default: ''
    change_column :jobs, :message_to_applicants, :text, null: false, default: ''
    change_column :jobs, :num_positions_available, :integer, null: false, default: 0
    change_column :jobs, :university_title, :string, null: false, default: ''
    change_column :jobs, :working_title, :string, null: false, default: ''
    change_column :jobs, :department, :string, null: false, default: ''
    change_column :jobs, :department_location, :string, null: false, default: ''
    change_column :jobs, :requisition_number, :integer, null: false, default: 0
    change_column :jobs, :summary_of_duties, :text, null: false, default: ''
    change_column :jobs, :add_info_for_applicants, :text, null: false, default: ''
    change_column :jobs, :pre_employment_screening, :string, null: false, default: ''
    change_column :jobs, :required_qualifications, :text, null: false, default: ''
    change_column :jobs, :desired_qualifications, :text, null: false, default: ''
    change_column :jobs, :target_salary, :string, null: false, default: ''
    change_column :jobs, :job_category, :string, null: false, default: ''
    change_column :jobs, :job_appointment, :string, null: false, default: ''
    change_column :jobs, :full_time, :boolean, null: false, default: false
    change_column :jobs, :temporary, :boolean, null: false, default: false
    change_column :jobs, :dept_contact_name, :string, null: false, default: ''
    change_column :jobs, :dept_contact_phone, :string, null: false, default: ''
    change_column :jobs, :link, :string, null: false, default: ''
    change_column :jobs, :entry_id, :string, null:false
    change_column :job_questions, :job_id, :integer, null: false, default: 0
    change_column :job_questions, :question, :string, null: false, default: ''
    change_column :job_question_options, :job_question_id, :integer, null: false, default: 0
    change_column :job_question_options, :option, :string, null: false, default: ''
    change_column :required_documents, :job_id, :integer, null: false, default: 0
    change_column :required_documents, :document, :string, null: false, default: ''
    change_column :optional_documents, :job_id, :integer, null: false, default: 0
    change_column :optional_documents, :document, :string, null: false, default: ''
  end
end
