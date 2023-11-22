class UsersController < ApplicationController
  before_action :find_user, only: [:destroy, :car_listings]

  def destroy
    @user.destroy
    redirect_to root_path, notice: 'Your profile has been successfully deleted.'
  end

  def car_listings
    @cars = @user.cars.includes(:bookings)
  end

  def profile
    @user = current_user
    @user_owner = can_edit_booking?(@user) # Pass the user to check ownership
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def can_edit_booking?(user)
    # Assuming a user can edit their bookings, checking if they have any future bookings
    user.bookings.exists?
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :other_attributes)
  end
end
