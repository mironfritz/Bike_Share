class BikesController < ApplicationController
  before_action :set_bike, only: %i(show edit update destroy)
  def index
    @bikes = policy_scope(Bike).order(created_at: :desc)
  end

  def new
    @bike = Bike.new
    authorize @bike
  end

  def show
    @bookings = Booking.where(bike_id == @bike.id)
  end

  def edit
  end

  def create
    @bike = Bike.create(bike_params)
    @bike.user = current_user
    authorize @bike
    if @bike.save!
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
    params.require(:bike).permit(:title, :description, :bike_type, :price_per_day)
  end
end
