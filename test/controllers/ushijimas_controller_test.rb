require 'test_helper'

class UshijimasControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get ushijimas_top_url
    assert_response :success
  end

  test "should get ushijima" do
    get ushijimas_ushijima_url
    assert_response :success
  end

end
