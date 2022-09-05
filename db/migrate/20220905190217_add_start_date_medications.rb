class AddStartDateMedications < ActiveRecord::Migration[7.0]
  def change
    add_column :medications, :start_date, :date
  end
end
