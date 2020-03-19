class BookingsController < ApplicationController

  def new
    redirect_back(fallback_location: "/flights") if params[:pick].nil?
    @flight = Flight.find(params[:pick][:flight_id])
    @passenger_count = params[:pick][:passenger_count]
    @passenger_count.times { @booking = Booking.new }
  end

  def create
    if @booking.save
    else
    end
  end

  private

  def booking_parameters
    params.require(:booking).permit(:flight_id, :passenger_id)
  end

end
