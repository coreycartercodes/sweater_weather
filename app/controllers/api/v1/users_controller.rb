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

  def login
    user_params = JSON.parse(request.env['RAW_POST_DATA'], symbolize_names: true)
    user = User.find_by(email: user_params[:email])
    if user && user.authenticate(user_params[:password])
      render json: UserSerializer.new(user), status: 200
    else
      render json: {errors: 'Incorrect email/password combination'}, status: 404
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :api_key, :password, :password_confirmation)
  end
end