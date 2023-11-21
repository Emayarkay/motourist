class UsersController < ApplicationController
  before_action :find_user, only: [:edit, :update, :confirm_changes, :destroy, :car_listings]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.confirmation_email(@user).deliver_now # Send confirmation email
      redirect_to root_path, notice: 'Please check your email to confirm your account.'
    else
      render :new
    end
  end

  def confirm
    @user = User.find_by_confirmation_token(params[:token])
    if @user
      @user.confirm! # Custom method to confirm the user
    # Redirect to a page after successful confirmation
      redirect_to root_path, notice: 'Your account has been confirmed!'
    else
    # Redirect or show an error if the confirmation token is invalid
      redirect_to root_path, alert: 'Invalid confirmation token.'
    end
  end

  def edit
  # Fetches the user to be edited
  end

  def profile
    @user = current_user
  end

  def update
    if @user.update(user_params)
      @user.update(profile_changes_confirmed: false) # Set changes as unconfirmed
      redirect_to confirm_changes_user_path(@user)
    else
      render :edit
    end
  end

  def confirm_changes
    @user.update(profile_changes_confirmed: true) # Confirm changes
    redirect_to user_path(@user), notice: 'Profile changes confirmed!'
  end

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
