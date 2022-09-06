class AddNotificationToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :notification, :boolean, :default => false
  end
end
