class AddNotificationToBaths < ActiveRecord::Migration[7.0]
  def change
    add_column :baths, :notification, :boolean, :default => false
  end
end
