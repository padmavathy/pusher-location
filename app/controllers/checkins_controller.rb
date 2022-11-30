class CheckinsController < ApplicationController
  def create
    @checkin = Checkin.new(checkin_params)
    render json: @checkin.as_json(only: [:lat, :lng, :walk_id]) if @checkin.save
  end
  
  private
    def checkin_params
      params.permit(:walk_id, :lat, :lng)
    end
end
