class BookingsController < ApplicationController
  before_action :set_bike, only: %i(edit update destroy)

  def new
    @bike = Bike.find(params(:id))
    @booking = Booking.new
    authorize @booking
  end

  def edit
  end

  def create
    @booking = Booking.create(booking_params)
    @booking.status = "booking requested"
    authorize @booking
    if @booking.save!
      redirect_to @booking, notice: 'You booked the bike!'
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
    params.require(:booking).permit(:status, :start_day, :end_date)
  end
end
