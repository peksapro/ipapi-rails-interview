require 'api_stack_client'
class GeoData
  def initialize(ip)
    @ip = ip
    @ip_item =  IpItem.where(ip: @ip)
  end

  def get
    if @ip_item.exists?
        @ip_item
    else
      @geo_api_item = JSON.parse(ApiStackClient.new(@ip).get)
      @ip_item = IpItem.new(ip: @ip, city: @geo_api_item['city'], country: @geo_api_item['country_name'])
      @ip_item.save
      @ip_item
    end
  end


end