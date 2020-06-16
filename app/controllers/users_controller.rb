class UsersController < ApplicationController
  def create
    user = User.new
    user.email = params[:email]
    user.password = params[:password]
    user.password_confirmation = params[:password_confirmation]
    if user.save
      render json: {resource: user}, status: 200
    else
      render json: {errors: user.errors}, status: 400
    end
  end
end
