require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get profiles_index_url
    assert_response :success
  end

  test "should get show" do
    get profiles_show_url
    assert_response :success
  end

  test "should get new" do
    get profiles_new_url
    assert_response :success
  end

  test "should get edit--skip-routes" do
    get profiles_edit--skip-routes_url
    assert_response :success
  end

end
