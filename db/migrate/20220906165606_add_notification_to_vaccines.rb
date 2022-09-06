class AddNotificationToVaccines < ActiveRecord::Migration[7.0]
  def change
    add_column :vaccines, :notification, :boolean, :default => false
  end
end
