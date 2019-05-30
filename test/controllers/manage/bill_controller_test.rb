require 'test_helper'

class Manage::BillControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get manage_bill_show_url
    assert_response :success
  end

  test "should get create" do
    get manage_bill_create_url
    assert_response :success
  end

  test "should get new" do
    get manage_bill_new_url
    assert_response :success
  end

  test "should get delete" do
    get manage_bill_delete_url
    assert_response :success
  end

  test "should get index" do
    get manage_bill_index_url
    assert_response :success
  end

end
