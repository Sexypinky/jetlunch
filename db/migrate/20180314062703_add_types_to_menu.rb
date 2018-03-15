class AddTypesToMenu < ActiveRecord::Migration[5.1]
  def change
    change_table :menus do |t|
      t.boolean :first
      t.boolean :main
      t.boolean :drink
    end
  end
end
