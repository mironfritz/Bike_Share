class BookingsController < ApplicationController
  before_action :set_booking, only: %i(edit update destroy)

  def edit
  end

  def create
    @bike =  Bike.find(params[:bike_id])
    @booking = Booking.create(booking_params)
    @booking.status = "booking requested"
    @booking.bike = @bike
    @booking.user = current_user
    authorize @booking
    if @booking.save!
      redirect_to bike_path(@bike), notice: 'You booked the bike!'
    else
      render :new
    end
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:booking].id)
    authorize @booking
  end

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date)
  end
end
