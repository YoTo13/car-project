class BookingsController < ApplicationController
  def index
  end

  def new
    @booking = Booking.new
  end

  def create
    def create
      @booking = Booking.new(booking_params)
      @car = Car.find(params[:car_id])
      @booking.car = @car
      @booking.user = current_user

      if @booking.save
        redirect_to root_path
      else
        render :new
      end
    end
  end

  def destroy
    @booking.destroy
    redirect_to root_path, notice: 'Booking successfully destroyed.'
    authorize @booking
  end

  def update
    @booking.available = false
    @booking.save
    redirect_to root_path
    authorize @booking
  end

  def show
    authorize @booking
  end

  def edit
    authorize @booking
  end

  private

end
