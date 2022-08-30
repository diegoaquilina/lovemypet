class CreateMedications < ActiveRecord::Migration[7.0]
  def change
    create_table :medications do |t|
      t.string :name
      t.float :dose
      t.string :dose_unit
      t.string :instructions
      t.date :reminder
      t.integer :frequency
      t.integer :days_qty
      t.references :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
