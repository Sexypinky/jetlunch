class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.string :dish
      t.integer :price
      t.string :weekday

      t.timestamps
    end
  end
end
