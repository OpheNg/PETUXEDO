class OutfitsController < ApplicationController
  def index
    @user = current_user
    @outfits = Outfit.all
  end

  def show
    @user = current_user
    @outfit = Outfit.find(params[:id])
  end

  def new
    @user = current_user
    @outfit = Outfit.new
  end

  def create
    @user = current_user
    @outfit = Outfit.new(outfit_params)
    if @outfit.save
      redirect_to outfits_path
    else
      render :new
    end
  end

  def edit
    @user = current_user
    @outfit = Outfit.find(params[:id])

  end

  def update
    @user = current_user
    @outfit = Outfit.find(params[:id])

    if @outfit.update(update_outfit_params)
      redirect_to outfits_path
    else
      render :new
    end
  end

  def destroy
    @outfit = Outfit.find(params[:id])
    redirect_to outfits_path if @outfit.destroy
  end

  private

  def outfit_params
    params.require(:outfit).permit(:name, :pet, :price, :color, :style, :user_id)
  end

  def update_outfit_params
    params.require(:outfit).permit(:name, :pet, :price, :color, :style)
  end

end
