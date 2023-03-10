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
    @outfit = Outfit.new
    @user = current_user
  end

  def create
    @outfit = Outfit.new(outfit_params)
    @user = current_user
    @outfit.user_id = @user.id
    if @outfit.save
      flash[:notice] = "Outfit created"
      redirect_to outfits_path
    else
      flash[:notice] = "Something went wrong, please check the form again"
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
    params.require(:outfit).permit(:user_id, :name, :pet, :price, :color, :style, :size, :description, photos:[])
  end

  def update_outfit_params
    params.require(:outfit).permit(:name, :pet, :price, :color, :style, :size,:description,  photos:[])
  end
end
