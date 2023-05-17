class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @user = current_user
    @order = Order.find(params[:id])
  end


  private

  def order_params
    params.require(:order).permit(:user_id, :total)
  end

  def update_order_params
    params.require(:order).permit(:user_id, :total)
  end
end
