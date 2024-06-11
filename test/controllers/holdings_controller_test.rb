require "test_helper"

class HoldingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get holdings_index_url
    assert_response :success
  end

  test "should get show" do
    get holdings_show_url
    assert_response :success
  end
end
