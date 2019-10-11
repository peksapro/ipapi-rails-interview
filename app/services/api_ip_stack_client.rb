class ApiIpStackClient
  BASE_URL = 'http://api.ipstack.com/'
  API_KEY = Rails.application.credentials.dig(:ipstack, :api_key)
  def initialize(ip)
    @ip = ip
  end

  def get
    HTTParty.get("#{BASE_URL}#{@ip}?access_key=#{API_KEY}").to_json
  end
end