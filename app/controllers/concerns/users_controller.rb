class UsersController < ApplicationController
  before_action :find_user, only: [:car_listings]

  # Other actions...
  def user
  @user = @user.User
  end

  def car_listings
    @cars = @user.cars.includes(:bookings)
  end

  private

  def find_user
    @user = User.find(params[:id])
  end


end
