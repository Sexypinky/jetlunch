class Dashboard::MenusController < Dashboard::DashboardController

  def show
    @menu=Menu.all
    @order=Order.new
  end

end
