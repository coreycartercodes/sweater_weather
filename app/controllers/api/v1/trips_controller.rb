class Api::V1::TripsController < ApplicationController

  def create
    trip_params = JSON.parse(request.env['RAW_POST_DATA'], symbolize_names: true)
    user = UserFacade.find_api(trip_params[:api_key])
    if user
      render json: TripSerializer.new(TripFacade.trip_info(trip_params[:origin], trip_params[:destination])), status: 201
    else
      render json: {errors: "Unauthorized"}, status: 401
    end
  end

end