class SiorisController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @sioris = current_user.sioris
  end

end
