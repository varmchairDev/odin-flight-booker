class BookingsController < ApplicationController

  def new
    if !params[:pick].nil?
      @flight = Flight.find(params[:pick][:flight_id])
      @passenger_count = params[:pick][:passenger_count].to_i
      @booking = Booking.new
      @passenger_count.times do 
        @booking.passengers.build
      end 
    end
  end

  def create
    passenger_count = params[:booking][:passenger_count].to_i
    @booking = Booking.new(flight_id: params[:booking][:flight_id], 
               passenger_count: passenger_count)
    passenger_count.times do |n|
      if @booking.passengers.build(name: params[:booking][:passenger]["name_#{n}".to_sym], email: params[:booking][:passenger]["email_#{n}".to_sym]).save
      else
        Booking.find(@booking.id).delete
        redirect_to "/flights"
      end
    end
    @booking.passengers.each do |passenger|
      PassengerMailer.thank_you_email(passenger).deliver_now!
    end
    redirect_to "/bookings/#{@booking.id}"
  end

  def show
    @booking = Booking.find(params[:id])
  end

end
