class SiorisController < ApplicationController
  def index
    @sioris = Siori.find(1)
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
    @sioris = Siori.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
