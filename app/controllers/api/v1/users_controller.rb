class Api::V1::UsersController < ApplicationController

  def create
    user_params = JSON.parse(request.env['RAW_POST_DATA'], symbolize_names: true)
    user = UserFacade.create(user_params)
    if user.save
      render json: UserSerializer.new(user), status: 201
    else
      render json: {errors: user.errors.full_messages.to_sentence}, status: 400
    end
  end

  # def find
  #   render json: UserSerializer.new(User.find_by(params[:email]))
  # end

  private
  def user_params
    params.require(:user).permit(:email, :api_key, :password, :password_confirmation)
  end
end