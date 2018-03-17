class Admin::OrdersController < Admin::AdminController

  def index
    @orders=Order.all
  end

  def show
    @order=Order.find(params[:id])
  end

  def week
  end


  def order_params
    params[:order].permit(:user_id, :first, :main, :drink)
  end

end
