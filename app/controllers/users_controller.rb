class UsersController < ApplicationController
  # def index
  #   @user = current_user
  #   if params[:query].present?
  #     sql_query = " \
  #     users.address ILIKE :query \
  #     OR users.nickname ILIKE :query \
  #     OR users.equipment ILIKE :query \

  #     "
  #     @users = User.where(sql_query, query: "%#{params[:query]}%")
  #   else
  #     @user = current_user
  #     @users = User.where(host: "yes")
  #   end

  #   @markers = @users.geocoded.map do |user|
  #     {
  #       lat: user.latitude,
  #       lng: user.longitude,
  #       info_window: render_to_string(partial: "info_window", locals: {user: user}),
  #       image_url: helpers.asset_url("pin.png")
  #     }
  #   end
  # end

  def show
    @user = current_user
  end

  # def new
  #   @user = User.new
  # end

  # def create
  #   @user = User.new(user_params)
  #   redirect_to dashboard_path if @user.save
  # end

  def edit
    @user = current_user
  end

  def update
    @user = current_user

    if @user.update(user_params_update)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :firstname, :address,:email,:tel,:photo, :password)
  end

  def user_params_update
    params.require(:user).permit(:name, :firstname, :address,:email,:tel,:photo, :password)

    # this is a test
  end
end
