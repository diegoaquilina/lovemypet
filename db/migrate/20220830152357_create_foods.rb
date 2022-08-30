class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :category
      t.string :brand
      t.float :bag_qty_kg
      t.float :daily_qty_kg
      t.date :start_date
      t.references :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
