require 'test_helper'

class DojosControllerTest < ActionDispatch::IntegrationTest
  test "should get dojos" do
    get dojos_dojos_url
    assert_response :success
  end

end
