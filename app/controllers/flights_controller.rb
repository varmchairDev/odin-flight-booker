class FlightsController < ApplicationController

  def index
    @end_day = Flight.order(take_off_time: :desc).first.take_off_time
  end

  def handle_form
  end

end
