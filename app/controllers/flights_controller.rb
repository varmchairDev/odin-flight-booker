class FlightsController < ApplicationController

  def index
    @flights ||= []
    @value_1 ||= Airport.first
    @value_2 ||= Airport.last
    @passenger_count ||= 1
    @selected_day ||= Date.today
    @end_day = Flight.order(take_off_time: :desc).first.take_off_time
  end

  def handle_form
    @flights = Flight.where("date(take_off_time) = ? and from_airport_id = ? and to_airport_id = ?", 
                            params[:flight][:pick_date], 
                            params[:flight][:from], params[:flight][:to])
    @value_1 = params[:flight][:from]
    @value_2 = params[:flight][:to]
    @passenger_count = params[:flight][:passenger_count].to_i
    @selected_day = params[:flight][:pick_date]
    render :index, :locals => { :@flights => @flights, 
                                :@value_1 => Airport.find(@value_1),
                                :@value_2 => Airport.find(@value_2),
                                :@passenger_count => @passenger_count,
                                :@selected_day => @selected_day,
                                :@end_day => Flight.order(take_off_time: :desc).first.take_off_time }
  end

end
