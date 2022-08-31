class AddWeightoToPets < ActiveRecord::Migration[7.0]
  def change
    add_column :pets, :weight, :float
  end
end
