class CreateBaths < ActiveRecord::Migration[7.0]
  def change
    create_table :baths do |t|
      t.string :category
      t.string :address
      t.decimal :latitude
      t.decimal :longitude
      t.date :date
      t.references :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
