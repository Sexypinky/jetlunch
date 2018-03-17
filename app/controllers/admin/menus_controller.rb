class Admin::MenusController < Admin::AdminController

  def new
    @menu=Menu.new
  end

  def create
    @menu=Menu.new(menu_params)
    if @menu.save
      redirect_to dashboard_menu_path(id: @menu.weekday), notice: "Position successfully created"
    else
      flash.now[:danger]="Create failed"
      render :new
    end
  end

  def edit
    @menu=Menu.find(params[:id])
  end

  def update
    @menu=Menu.find(params[:id])
    if @menu.update(menu_params)
      redirect_to dashboard_menu_path(id: @menu.weekday), notice: "Position successfully updated"
    else
      flash.now[:danger]="Update failed"
      render :edit
    end
  end

  def destroy
    @menu=Menu.find(params[:id])
    @menu.destroy
    redirect_to dashboard_menu_path(id: @menu.weekday), notice: "Position successfully deleted"
  end

  def menu_params
    params[:menu].permit(:weekday, :price, :dish, :image, :remove_image, :remote_image_url, :first, :main, :drink)
  end

end
