class SiorisController < ApplicationController
  before_action :authenticate_user!
  
  def index
  end
  
  def show
    @siori = Siori.find(params[:id])
  end
  
  def new
    @siori = Siori.new
    @siori.travel_day.build
    @siori.travel_day.first.tourist_spots.build
    @siori.travel_day.first.tourist_spots.first.build_tourist_detail
  end
  
  def create
    @siori = current_user.sioris.new(siori_params)
    
    if @siori.save
      current_user.sioris << @siori
      @group = @siori.travel_groups.last
      @group.Owner = true
      @group.save
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
            :title
            ]
          ]
        ]
    )
  end
  
end
