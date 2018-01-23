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
<<<<<<< HEAD
      :departure_date,
      travel_day_attributes: [
        :id,
        :day
        ]
=======
      :departure_date
>>>>>>> parent of 3f3fba3... インスタンス変数名の変更とリファクタリング
    )
  end
end
