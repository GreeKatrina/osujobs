require 'test_helper'

class JobsControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get jobs_url
    assert_response :success
  end

end
