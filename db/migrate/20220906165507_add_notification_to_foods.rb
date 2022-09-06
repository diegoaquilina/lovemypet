class AddNotificationToFoods < ActiveRecord::Migration[7.0]
  def change
    add_column :foods, :notification, :boolean, :default => false
  end
end
