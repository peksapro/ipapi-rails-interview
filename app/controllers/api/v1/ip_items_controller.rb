require 'ip_data'
class Api::V1::IpItemsController < ApplicationController
  def show
    render json: IpData.new(params['ip']).get
  end
end