require 'api_ip_stack_client'
class IpData
  def initialize(ip)
    @ip = ip
    @ip_item =  IpItem.where(ip: @ip)
  end

  def get
    if @ip_item.exists?
        @ip_item
    else
      @api_ip_data = JSON.parse(ApiIpStackClient.new(@ip).get)
      @ip_item = IpItem.new(ip: @ip, city: @api_ip_data['city'], country: @api_ip_data['country_name'])
      @ip_item.save
      @ip_item
    end
  end


end