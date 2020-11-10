class Api::V1::ImageController < ApplicationController
  def index
    render json: BackgroundSerializer.new(BackgroundFacade.get_pic(params[:location]))
  end
end