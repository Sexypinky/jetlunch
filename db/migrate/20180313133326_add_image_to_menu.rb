class AddImageToMenu < ActiveRecord::Migration[5.1]
  def change
    change_table :menus do |t|
      t.string :image
    end
  end
end
