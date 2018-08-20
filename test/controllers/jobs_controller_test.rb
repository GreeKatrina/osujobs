require 'test_helper'

class JobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_job_url
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post jobs_url, params: { job: { add_info_for_applicants: @job.add_info_for_applicants, department: @job.department, department_location: @job.department_location, dept_contact_name: @job.dept_contact_name, dept_contact_phone: @job.dept_contact_phone, desired_qualifications: @job.desired_qualifications, full_time: @job.full_time, job_appointment: @job.job_appointment, job_category: @job.job_category, link: @job.link, message_to_applicants: @job.message_to_applicants, num_positions_available: @job.num_positions_available, posting_end_date: @job.posting_end_date, posting_start_date: @job.posting_start_date, pre_employment_screening: @job.pre_employment_screening, required_qualifications: @job.required_qualifications, requisition_number: @job.requisition_number, summary_of_duties: @job.summary_of_duties, target_salary: @job.target_salary, temporary: @job.temporary, title: @job.title, top_message: @job.top_message, university_title: @job.university_title, working_title: @job.working_title } }
    end

    assert_redirected_to job_url(Job.last)
  end

  test "should show job" do
    get job_url(@job)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_url(@job)
    assert_response :success
  end

  test "should update job" do
    patch job_url(@job), params: { job: { add_info_for_applicants: @job.add_info_for_applicants, department: @job.department, department_location: @job.department_location, dept_contact_name: @job.dept_contact_name, dept_contact_phone: @job.dept_contact_phone, desired_qualifications: @job.desired_qualifications, full_time: @job.full_time, job_appointment: @job.job_appointment, job_category: @job.job_category, link: @job.link, message_to_applicants: @job.message_to_applicants, num_positions_available: @job.num_positions_available, posting_end_date: @job.posting_end_date, posting_start_date: @job.posting_start_date, pre_employment_screening: @job.pre_employment_screening, required_qualifications: @job.required_qualifications, requisition_number: @job.requisition_number, summary_of_duties: @job.summary_of_duties, target_salary: @job.target_salary, temporary: @job.temporary, title: @job.title, top_message: @job.top_message, university_title: @job.university_title, working_title: @job.working_title } }
    assert_redirected_to job_url(@job)
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete job_url(@job)
    end

    assert_redirected_to jobs_url
  end
end
