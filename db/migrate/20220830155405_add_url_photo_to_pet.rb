class AddUrlPhotoToPet < ActiveRecord::Migration[7.0]
  def change
    add_column :pets, :url_photo, :string
  end
end
