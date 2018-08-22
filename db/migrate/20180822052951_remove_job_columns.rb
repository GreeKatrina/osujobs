class RemoveJobColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :jobs, :top_message, :string, null: false, default: ''
    remove_column :jobs, :message_to_applicants, :text, null: false, default: ''
    remove_column :jobs, :number_of_positions_available, :integer, null: false, default: 0
    remove_column :jobs, :university_title, :string, null: false, default: ''
    remove_column :jobs, :working_title, :string, null: false, default: ''
    remove_column :jobs, :department_location, :string, null: false, default: ''
    remove_column :jobs, :requisition_number, :integer, null: false, default: 0
    remove_column :jobs, :summary_of_duties, :text, null: false, default: ''
    remove_column :jobs, :additional_info_for_applicants, :text, null: false, default: ''
    remove_column :jobs, :pre_employment_screening, :string, null: false, default: ''
    remove_column :jobs, :required_qualifications, :text, null: false, default: ''
    remove_column :jobs, :desired_qualifications, :text, null: false, default: ''
    remove_column :jobs, :job_category, :string, null: false, default: ''
    remove_column :jobs, :job_appointment, :string, null: false, default: ''
  end
end
