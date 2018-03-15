class AddWeekDayToOrders < ActiveRecord::Migration[5.1]
  def change
     change_table :orders do |t|
      t.string :weekday
    end
  end
end
