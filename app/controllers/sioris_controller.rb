class SiorisController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @sioris = current_user.sioris
  end
  
  def show
  end
  
  def new
  end
  
  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
