require 'api_stack_client'
class GeoData
  def initialize(ip)
    @ip = ip
    @geo =  Geo.where(ip: @ip)
  end

  def get
    if @geo.exists?
        @geo
    else
      @geo_api_item = JSON.parse(ApiStackClient.new(@ip).get)
      @geo_item = Geo.new(ip: @ip, city: @geo_api_item['city'], country: @geo_api_item['country_name'])
      @geo_item.save
      @geo_item
    end
  end


end