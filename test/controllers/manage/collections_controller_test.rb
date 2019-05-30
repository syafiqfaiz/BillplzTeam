require 'test_helper'

class Manage::CollectionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get manage_collections_index_url
    assert_response :success
  end

  test "should get show" do
    get manage_collections_show_url
    assert_response :success
  end

  test "should get edit" do
    get manage_collections_edit_url
    assert_response :success
  end

  test "should get update" do
    get manage_collections_update_url
    assert_response :success
  end

  test "should get new" do
    get manage_collections_new_url
    assert_response :success
  end

  test "should get create" do
    get manage_collections_create_url
    assert_response :success
  end

  test "should get delete" do
    get manage_collections_delete_url
    assert_response :success
  end

end
