class OrdersController < ApplicationController
  def index
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.save
    redirect_back(fallback_location: root_path)
  end

  private

  def order_params
    params.require(:order).permit(:price, :payed, :user_id)
  end
end
