class API::OrdersController < ApplicationController
http_basic_authenticate_with name: ENV['API_LOGIN'], password: ENV['API_PASS']

  def index
    @orders=Order.all
    @orders=@orders.where(weekday: Date.today.strftime("%A"))
    render json: @orders
  end

end
