require 'test_helper'

class RpgControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get farm" do
    get rpg_controller_farm_url
    assert_response :success
  end

  test "should get cave" do
    get rpg_controller_cave_url
    assert_response :success
  end

  test "should get casino" do
    get rpg_controller_casino_url
    assert_response :success
  end

  test "should get house" do
    get rpg_controller_house_url
    assert_response :success
  end

end
