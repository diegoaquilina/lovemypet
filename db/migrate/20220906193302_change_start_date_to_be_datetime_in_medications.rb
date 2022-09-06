class ChangeStartDateToBeDatetimeInMedications < ActiveRecord::Migration[7.0]
  def up
    change_column :medications, :start_date, :datetime
  end

  def down
    change_column :medications, :start_date, :date
  end
end
