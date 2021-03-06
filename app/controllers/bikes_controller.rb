class BikesController < ApplicationController
  before_action :set_bike, only: %i(show edit update destroy)

  def index
    if params[:query].present?
      sql_query = "address @@ :query OR bike_type @@ :query"
      @bikes = policy_scope(Bike).geocoded.order(created_at: :desc).where(sql_query, query: "%#{params[:query]}%")
    else
      @bikes = policy_scope(Bike).geocoded.order(created_at: :desc)
    end
    @markers = @bikes.map do |bike|
      {
        lat: bike.latitude,
        lng: bike.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { bike: bike }),
      }
    end
  end

  def new
    @bike = Bike.new
    authorize @bike
  end

  def show
    @booking = Booking.new(bike: @bike)
    @bookings = Booking.where(params[:id] == @bike.id)
    @bookings = Booking.all
    @markers = [
      {
        lat: @bike.latitude,
        lng: @bike.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { bike: @bike }),
      }
    ]
  end

  def edit
  end

  def create
    @bike = Bike.create(bike_params)
    @bike.user = current_user
    authorize @bike
    if @bike.save
      redirect_to @bike, notice: 'Bike was succesfully created!'
    else
      render :new
    end
  end

  def update
    @bike.update(bike_params)
    redirect_to bike_path(@bike)
  end

  def destroy
    @bike.destroy
    redirect_to bikes_path
  end

  private

  def set_bike
    @bike = Bike.find(params[:id])
    authorize @bike
  end

  def bike_params
    params.require(:bike).permit(:title, :description, :bike_type, :price_per_day, :address, :photo)
  end
end
