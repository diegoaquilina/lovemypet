class AddUrlPhotoToVaccine < ActiveRecord::Migration[7.0]
  def change
    add_column :vaccines, :url_photo, :string
  end
end
