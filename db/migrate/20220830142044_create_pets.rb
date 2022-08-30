class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.string :size
      t.date :age
      t.integer :weight
      t.string :sex
      t.boolean :neutered
      t.boolean :microchipped
      t.string :feeding_schedule
      t.string :energy_level
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
