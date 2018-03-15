class Dashboard::OrdersController < Dashboard::DashboardController

  def new
    @order=Order.new
  end

  def addfirst
    @total_price=params[:price]
    @first=params[:first]
    redirect_to dashboard_main_course_path(id: params[:weekday], first: @first, total_price: @total_price), notice: 'Successfully'
  end

  def addmain
    @total_price=params[:total_price].to_i + params[:price].to_i
    @main=params[:main]
    @first=params[:first]
    redirect_to dashboard_drink_path(id: params[:weekday], main: @main, first: @first, total_price: @total_price), notice: "Successfully"
  end

  def destroy
    @order=Order.find(params[:id])
    @order.destroy
    redirect_to dashboard_myorders_path, notice: "Order successfully canceled"
  end

  def myorders
    @orders =current_user.orders
  end

  def main_course
    @menu=Menu.all
  end

  def drink
    @menu=Menu.all
  end

  def finish_order
    @total_price=params[:total_price].to_i + params[:price].to_i
    @order=current_user.orders.new(drink: params[:drink], main: params[:main],first: params[:first],total_price: @total_price, weekday: params[:weekday])
    @order.save
    redirect_to dashboard_myorders_path, notice: "You'r ordered successfully"
    end

end
