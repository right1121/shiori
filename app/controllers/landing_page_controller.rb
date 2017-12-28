class LandingPageController < ApplicationController
  def index
    redirect_to '/users/sign_in'
  end
end
