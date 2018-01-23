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
    @siori = current_user.sioris.new(siori_params)
    
    if @siori.save
      current_user.sioris << @siori
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
      {user_id: []}
    )
  end
end
