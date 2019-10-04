require 'test_helper'

class Api::V1::GeosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @geo = geos(:one)
  end

  test 'should show geo item' do
    get api_v1_geo_url(@geo), as: :json
    assert_response :success

    json_response = JSON.parse(self.response.body)
    assert_equal @geo.ip, json_response['ip']
  end
end