class DashboardController < ApplicationController

  def index
    LocationService.new(params[:location])
  end

end