class Api::V1::UsersController < ApplicationController

  def create
    user = User.new(strong_params)
    if user.save
      render json: UsersSerializer.new(user)
    else
      render body: nil, status: :no_content
    end
  end

  private
  def strong_params
    params.permit(:email, :password, :password_confirmation)
  end
end
