class ChangeArtPhoto < ActiveRecord::Migration
  def change
  	remove_column :art_photos, :art_photo, :string
  	add_column :art_photos, :photo, :string
  end
end
