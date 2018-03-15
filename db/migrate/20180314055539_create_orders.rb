class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
        t.string :user_id
        t.integer :first
        t.integer :main
        t.integer :drink

        t.timestamps
    end
  end
end
