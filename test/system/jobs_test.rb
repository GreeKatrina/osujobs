require "application_system_test_case"

class JobsTest < ApplicationSystemTestCase
  setup do
    @job = jobs(:one)
  end

  test "visiting the index" do
    visit jobs_url
    assert_selector "h1", text: "Jobs"
  end

  test "creating a Job" do
    visit jobs_url
    click_on "New Job"

    fill_in "Add Info For Applicants", with: @job.additional_info_for_applicants
    fill_in "Department", with: @job.department
    fill_in "Department Location", with: @job.department_location
    fill_in "Dept Contact Name", with: @job.dept_contact_name
    fill_in "Dept Contact Phone", with: @job.dept_contact_phone
    fill_in "Desired Qualifications", with: @job.desired_qualifications
    fill_in "Full Time", with: @job.full_time
    fill_in "Job Appointment", with: @job.job_appointment
    fill_in "Job Category", with: @job.job_category
    fill_in "Link", with: @job.link
    fill_in "Message To Applicants", with: @job.message_to_applicants
    fill_in "Num Positions Available", with: @job.number_of_positions_available
    fill_in "Posting End Date", with: @job.posting_end_date
    fill_in "Posting Start Date", with: @job.posting_start_date
    fill_in "Pre Employment Screening", with: @job.pre_employment_screening
    fill_in "Required Qualifications", with: @job.required_qualifications
    fill_in "Requisition Number", with: @job.requisition_number
    fill_in "Summary Of Duties", with: @job.summary_of_duties
    fill_in "Target Salary", with: @job.target_salary
    fill_in "Temporary", with: @job.temporary
    fill_in "Title", with: @job.title
    fill_in "Top Message", with: @job.top_message
    fill_in "University Title", with: @job.university_title
    fill_in "Working Title", with: @job.working_title
    click_on "Create Job"

    assert_text "Job was successfully created"
    click_on "Back"
  end

  test "updating a Job" do
    visit jobs_url
    click_on "Edit", match: :first

    fill_in "Add Info For Applicants", with: @job.additional_info_for_applicants
    fill_in "Department", with: @job.department
    fill_in "Department Location", with: @job.department_location
    fill_in "Dept Contact Name", with: @job.dept_contact_name
    fill_in "Dept Contact Phone", with: @job.dept_contact_phone
    fill_in "Desired Qualifications", with: @job.desired_qualifications
    fill_in "Full Time", with: @job.full_time
    fill_in "Job Appointment", with: @job.job_appointment
    fill_in "Job Category", with: @job.job_category
    fill_in "Link", with: @job.link
    fill_in "Message To Applicants", with: @job.message_to_applicants
    fill_in "Num Positions Available", with: @job.number_of_positions_available
    fill_in "Posting End Date", with: @job.posting_end_date
    fill_in "Posting Start Date", with: @job.posting_start_date
    fill_in "Pre Employment Screening", with: @job.pre_employment_screening
    fill_in "Required Qualifications", with: @job.required_qualifications
    fill_in "Requisition Number", with: @job.requisition_number
    fill_in "Summary Of Duties", with: @job.summary_of_duties
    fill_in "Target Salary", with: @job.target_salary
    fill_in "Temporary", with: @job.temporary
    fill_in "Title", with: @job.title
    fill_in "Top Message", with: @job.top_message
    fill_in "University Title", with: @job.university_title
    fill_in "Working Title", with: @job.working_title
    click_on "Update Job"

    assert_text "Job was successfully updated"
    click_on "Back"
  end

  test "destroying a Job" do
    visit jobs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job was successfully destroyed"
  end
end
