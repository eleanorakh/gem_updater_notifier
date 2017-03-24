require 'test_helper'

class RecipientsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get recipients_new_url
    assert_response :success
  end

  test "should get create" do
    get recipients_create_url
    assert_response :success
  end

end
