class SiorisController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :set_siori, only: [:show, :destroy]
  
  def index
  end
  
  def show
    if user_signed_in?
      @group_build = current_user.travel_groups.build
      @connecting_group = current_user.travel_groups.find_by(siori_id: @siori.id)
    end
  end
  
  def new
    @siori.travel_day.build
    @siori.travel_day.first.tourist_spots.build
    @siori.travel_day.first.tourist_spots.first.build_tourist_detail
  end
  
  def create
    @siori = current_user.sioris.new(siori_params)
    
    if @siori.save
      current_user.sioris << @siori
      @travel_group = @siori.travel_groups.find_by(user_id: current_user)
      @travel_group.owner = true
      @travel_group.save
      redirect_to sioris_url
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @siori.destroy
    redirect_to sioris_path
  end
  
  private
  
  def siori_params
    params.require(:siori).permit(
      :content,
      :departure_date,
      travel_day_attributes: [
        :id,
        :day,
        tourist_spots_attributes: [
          :id,
          :order_position,
          :arrival_time,
          :duration,
          tourist_detail_attributes: [
            :id,
            :title,
            :content,
            :longitude,
            :latitude
            ]
          ]
        ]
    )
  end
  
  def set_siori
    @siori = Siori.find(params[:id])
  end
  
end
