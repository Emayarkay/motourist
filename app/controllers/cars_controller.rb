class CarsController < ApplicationController
  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to car_path(@car)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
    redirect_to car_path(@car)
  end

  def edit
    @car = Car.find(params[:id])
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to car_path(@car)
  end

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
    @booking = Booking.new
  end

  private

  def car_params
    params.require(:cars).permit(:make, :model, :year, :price, :description, :location, :colour, :capacity)
  end
end
