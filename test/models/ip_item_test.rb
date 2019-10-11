require 'test_helper'

class IpItemTest < ActiveSupport::TestCase
  test 'Ip item with valid ip should be valid' do
    geo = IpItem.new(ip: '192.168.333.444',city:'Gdansk',country:'Poland')
    assert_not geo.valid?
  end
  test 'Ip item with not correct city should not be valid' do
    geo = IpItem.new(ip: '192.168.0.1',city:'Gdansk123',country:'Poland')
    assert_not geo.valid?
  end
  test 'Ip item with not correct country should not be valid' do
    geo = IpItem.new(ip: '192.168.0.1',city:'Gdansk',country:'Poland123')
    assert_not geo.valid?
  end
end
