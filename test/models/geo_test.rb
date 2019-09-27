require 'test_helper'

class GeoTest < ActiveSupport::TestCase
  test 'geo with valid ip should be valid' do
    geo = Geo.new(ip: '333.333.333.333',city:'Gdansk',country:'Poland')
    assert geo.valid?
  end
end
