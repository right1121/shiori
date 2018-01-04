class SiorisController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @user = User.find_by(id: current_user.id)
    @sioris = current_user.sioris
  end
  
  def create
  end

  def new
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
end
