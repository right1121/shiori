class SiorisController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @user = find_login_user
    @sioris = current_user.sioris
  end
  
  def create
    @user = find_login_user
  end

  def new
    @siori = Siori.new
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
      :content
      :departure_date
    )
  end
end
