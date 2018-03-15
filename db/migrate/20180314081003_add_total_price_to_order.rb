class AddTotalPriceToOrder < ActiveRecord::Migration[5.1]
  def change
    change_table :orders do |t|
      t.integer :total_price
    end
  end
end
