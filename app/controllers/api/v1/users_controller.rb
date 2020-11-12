class Api::V1::UsersController < ApplicationController

  def create
    user = User.new(strong_params)
    if user.save
      render json: UsersSerializer.new(user), status: 201
    else
      render body: user.errors, status: 400
    end
  end

  private
  def strong_params
    params.permit(:email, :password, :password_confirmation)
  end
end
