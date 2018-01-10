class SiorisController < ApplicationController
  before_action :authenticate_user!
  
  def index
  end
  
  def show
  end
  
  def new
    @siori = Siori.new
    @siori.build_travel_day
    @siori.travel_day.tourist_spots.build
    @siori.travel_day.tourist_spots.first.build_tourist_detail
  end
  
  def create
    @siori = Siori.new(siori_params)
    @user = current_user
    @user.sioris << @siori
    
    if @user.save
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
      travel_days_attributes: [:id]
    )
  end
end
