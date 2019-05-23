require 'test_helper'

class Manage::UserProfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get manage_user_profiles_show_url
    assert_response :success
  end

  test "should get edit" do
    get manage_user_profiles_edit_url
    assert_response :success
  end

  test "should get update" do
    get manage_user_profiles_update_url
    assert_response :success
  end

end
