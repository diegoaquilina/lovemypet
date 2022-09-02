class ChangeWeigthToBeFloatInPets < ActiveRecord::Migration[7.0]
  def change
    change_column :pets, :weight, :float
  end
end
