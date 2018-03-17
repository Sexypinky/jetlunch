class StaticPagesController < ApplicationController
  def about
    @orders=Order.all
    @orders.each do |order|
      order.show
    end
  end
end
