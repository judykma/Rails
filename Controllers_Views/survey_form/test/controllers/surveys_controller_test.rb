require 'test_helper'

class SurveysControllerTest < ActionDispatch::IntegrationTest
  test "should get results" do
    get surveys_results_url
    assert_response :success
  end

end
