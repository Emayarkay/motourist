class UsersController < ApplicationController
  before_action :find_user, only: [:destroy, :car_listings]

  def destroy
    @user.destroy
    redirect_to root_path, notice: 'Your profile has been successfully deleted.'
  end

  def car_listings
    @cars = @user.cars.includes(:bookings)
  end

  private

  def find_user
    @user = User.find(params[:id])
  end


  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :other_attributes)
  end
end
