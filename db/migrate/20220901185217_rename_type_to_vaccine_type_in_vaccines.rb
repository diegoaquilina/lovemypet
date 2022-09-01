class RenameTypeToVaccineTypeInVaccines < ActiveRecord::Migration[7.0]
  def up
    rename_column :vaccines, :type, :vaccine_type
  end
end
