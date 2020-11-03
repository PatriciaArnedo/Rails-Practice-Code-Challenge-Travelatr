class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all
  end

  def show
    find_destination
  end

  def new
    @destination = Destination.new
  end

  def create
    @destination.new
    @destination.save(destination_params)
    redirect_to destination_path(@destination)
  end

  def edit
    find_destination
  end

  def update
    find_destination
    @destination.update(destination_params)
    redirect_to destination_path(@destination)
  end

  private

  def destination_params
    params.require(:destination).permit(:name, :country)
  end

  def find_destination
    @destination = Destination.all.find(params[:id])
  end
end
