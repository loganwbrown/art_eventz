class ChangeEventPhotoName < ActiveRecord::Migration
  def change
  	remove_column :events, :photo1, :string
  	remove_column :events, :photo2, :string
  	remove_column :events, :photo3, :string
  	remove_column :event_photos, :photo, :string

  end
end
