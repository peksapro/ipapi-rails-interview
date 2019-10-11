require 'geo_data'
class Api::V1::GeosController < ApplicationController
  def show
    render json: GeoData.new(params['ip']).get
  end
end