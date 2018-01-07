class SiorisController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @user = find_login_user
    @sioris = current_user.sioris
  end
  
  def create
    @siori = Siori.new(siori_params)
    @user = find_login_user
    @user.sioris << @siori
    if @user.save
      redirect_to sioris_url
    else
      render 'new'
    end
  end

  def new
    @siori = Siori.new
    @siori.build_travel_day
  end

  def edit
  end

  def show
    @sioris = Siori.where()
  end

  def update
  end

  def destroy
  end
  
  private
  def find_login_user
    User.find_by(id: current_user.id)
  end
  
  def siori_params
    params.require(:siori).permit(
      :content,
      :departure_date,
      travel_days_attributes: [:id]
    )
  end
end
