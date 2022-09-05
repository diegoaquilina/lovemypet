class RemoveDaysQtyFromMedications < ActiveRecord::Migration[7.0]
  def change
    remove_column :medications, :days_qty, :date
  end
end
