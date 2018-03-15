class Admin::PanelController < Admin::AdminController

  def allusers
    @user=User.all
  end

end
