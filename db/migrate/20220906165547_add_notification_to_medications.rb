class AddNotificationToMedications < ActiveRecord::Migration[7.0]
  def change
    add_column :medications, :notification, :boolean, :default => false
  end
end
