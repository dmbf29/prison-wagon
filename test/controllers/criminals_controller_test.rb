require "test_helper"

class CriminalsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get criminals_new_url
    assert_response :success
  end
end
