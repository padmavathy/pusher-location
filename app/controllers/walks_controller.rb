class WalksController < ApplicationController
  def index
  end

  # function for creating a new walk
  def create
    @walk = Walk.new(walk_params)
    @walk.checkins.build(lat: params[:lat], lng: params[:lng])
    render json: @walk.as_json if @walk.save
  end
  
  # function for showing a walk
  def show
    @walk = Walk.find_by(uuid: params[:id])
  end

  private
    def walk_params
      params.permit(:name)
    end
end
