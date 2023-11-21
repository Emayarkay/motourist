class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
    @car = @booking.car_id
  end

  def create
    dates = params[:booking][:start_date].split(' to ')
    @booking = Booking.new(start_date: dates[0], end_date: dates[1])
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'cars/show', status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to car_path(@booking.car)
  end

  private

  def booking_params
    params.require(:bookings).permit(:start_date, :end_date)
  end
end
