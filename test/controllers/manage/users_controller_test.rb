require 'test_helper'

class Manage::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get manage_users_index_url
    assert_response :success
  end

  test "should get show" do
    get manage_users_show_url
    assert_response :success
  end

  test "should get edit" do
    get manage_users_edit_url
    assert_response :success
  end

  test "should get update" do
    get manage_users_update_url
    assert_response :success
  end

  test "should get create" do
    get manage_users_create_url
    assert_response :success
  end

  test "should get delete" do
    get manage_users_delete_url
    assert_response :success
  end

  test "should get new" do
    get manage_users_new_url
    assert_response :success
  end

end
