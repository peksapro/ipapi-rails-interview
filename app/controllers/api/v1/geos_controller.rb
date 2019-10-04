require 'api_stack_client'
class Api::V1::GeosController < ApplicationController
  def show
    @geo = Geo.where(ip: params['ip'])
    response =  ApiStackClient.new(params['ip']).get
    render json: response
  end
end
