class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :category
      t.string :company
      t.string :url
      t.string :description
      t.string :phone
      t.string :photo
      t.integer :rating
      t.string :address
      t.decimal :latitude
      t.decimal :longitude
      t.integer :price

      t.timestamps
    end
  end
end
