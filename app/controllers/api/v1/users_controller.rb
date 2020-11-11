class Api::V1::UsersController < ApplicationController

  def create
    require "pry"; binding.pry
  end

  private
  def strong_params
    params.permit()

  end
end
