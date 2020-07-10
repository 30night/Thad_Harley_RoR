class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :update, :destroy]

  def index 
    @trips = Trip.all.order(id: "desc")
    render json: @trips
  end 

  def show 
    render json: @trip
  end 

  def create 
    Trip.create(trip_params)
    render json: "Trip suggestion created", status: 200 
  end 

  def update 
    @trip.update(trip_params)
    render json: "Suggestion updated", status: 200
  end 

  def destroy
    @trip.destroy
    render json: "Suggestion deleted", status: 200
  end 

  private 

  def trip_params 
    params.require(:trip).permit(:title, :description, :name, :picture)
  end 

  def set_trip 
    @trip = Trip.find(params[:id])
  end 
end