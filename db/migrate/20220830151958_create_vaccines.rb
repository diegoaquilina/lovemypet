class CreateVaccines < ActiveRecord::Migration[7.0]
  def change
    create_table :vaccines do |t|
      t.string :type
      t.date :app_date
      t.date :expiry_date
      t.references :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
