class TravelGroupsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    siori = Siori.find(params[:siori_id])
    current_user.follow(siori)
    redirect_to siori
  end

  def destroy
    siori = TravelGroup.find(params[:id]).siori_id
    current_user.unfollow(siori)
    redirect_to Siori.find(siori)
  end
end
