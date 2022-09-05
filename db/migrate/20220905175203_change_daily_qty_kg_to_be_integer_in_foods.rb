class ChangeDailyQtyKgToBeIntegerInFoods < ActiveRecord::Migration[7.0]
  def change
    change_column :foods, :daily_qty_kg, :integer
  end
end
