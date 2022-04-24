class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user = current_user
    @booking.total_price = @car.price * (@booking.end_date - @booking.start_date).to_i
    if @booking.save!
      redirect_to car_booking_path(@car, @booking)
    else
      render 'cars/show'
    end
  end

  def edit
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.save
    redirect_to root_path
  end

  def show
    @car = Car.find(params[:car_id])
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to root_path, notice: 'Booking successfully destroyed.'
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :car_id)
  end
end
