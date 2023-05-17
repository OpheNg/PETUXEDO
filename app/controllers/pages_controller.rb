class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @outfits = Outfit.all
    @user = current_user
  end
  def profile
    @user = current_user
  end
end
