require 'test_helper'

class Api::V1::IpItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ip_item = ip_items(:one)
  end

  test "should show api_v1_ip_item" do
    get api_v1_ip_item_url(@ip_item), as: :json
    assert_response :success

    json_response = JSON.parse(self.response.body)
    assert_equal @ip_item.ip.to_s, json_response['ip'].to_s
  end
end
