require 'test_helper'

class Api::V1::GeosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ip_item = ip_items(:one)
  end

  test 'should show ip item' do
    get api_v1_geo_url(@ip_item), as: :json
    assert_response :success

    json_response = JSON.parse(self.response.body)
    assert_equal @ip_item.ip.to_s, json_response['ip'].to_s
  end
end