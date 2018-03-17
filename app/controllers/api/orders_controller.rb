class API::OrdersController < ApplicationController

  def index
    @orders=Order.all
    @orders=@orders.where(weekday: Date.today.strftime("%A"))
    render json: @orders
  end

end
