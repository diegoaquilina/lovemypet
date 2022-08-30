class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.string :title
      t.date :date
      t.string :address
      t.string :phone
      t.decimal :latitude
      t.decimal :longitude
      t.references :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
