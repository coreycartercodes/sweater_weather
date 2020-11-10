class Api::V1::UsersController < ApplicationController

  def create
    binding.pry
    user_params = JSON.parse(request.body.read, symbolize_names: true, :quirks_mode => true)
    user = User.new(user_params)
    if user.save
      # session[:current_user] = user.id
      render json: UserSerializer.new(user), status: 201
    else
      render json: {errors: user.errors.full_messages.to_sentence}, status: 400
    end
  end

  def find
    render json: UserSerializer.new(User.find_by(params[:email]))
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end