class FlightsController < ApplicationController

  def index
    @flights ||= []
    @end_day = Flight.order(take_off_time: :desc).first.take_off_time
  end

  def handle_form
    @flights = Flight.where("date(take_off_time) = ? and from_airport_id = ? and to_airport_id = ?", 
                            params[:flight][:pick_date], 
                            params[:flight][:from], params[:flight][:to])
    render :index, :locals => { :@datee => @datee, :@flights => @flights }
  end

end
