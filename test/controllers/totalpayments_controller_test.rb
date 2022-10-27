require "test_helper"

class TotalpaymentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get totalpayments_index_url
    assert_response :success
  end
end
