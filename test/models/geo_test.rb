require 'test_helper'

class GeoTest < ActiveSupport::TestCase
  test 'geo with valid ip should be valid' do
    geo = Geo.new(ip: '192.168.333.444',city:'Gdansk',country:'Poland')
    assert_not geo.valid?
  end
  test 'geo with not correct city should not be valid' do
    geo = Geo.new(ip: '192.168.0.1',city:'Gdansk123',country:'Poland')
    assert_not geo.valid?
  end
  test 'geo with not correct country should not be valid' do
    geo = Geo.new(ip: '192.168.0.1',city:'Gdansk',country:'Poland123')
    assert_not geo.valid?
  end
end
