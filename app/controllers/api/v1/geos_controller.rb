class Api::V1::GeosController < ApplicationController
  def show
    @geo = Geo.where(ip: params['ip'])
    render json: @geo
  end
end
