class SiorisController < ApplicationController
  def index
    @sioris = Siori.all
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
