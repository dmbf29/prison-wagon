require "test_helper"

class PrisonsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get prisons_show_url
    assert_response :success
  end
end
