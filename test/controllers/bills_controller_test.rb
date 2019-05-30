require 'test_helper'

class BillsControllerTest < ActionDispatch::IntegrationTest
  test "should get callback" do
    get bills_callback_url
    assert_response :success
  end

  test "should get thank_you" do
    get bills_thank_you_url
    assert_response :success
  end

  test "should get cancel" do
    get bills_cancel_url
    assert_response :success
  end

end
