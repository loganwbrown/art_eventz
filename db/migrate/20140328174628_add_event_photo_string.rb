class AddEventPhotoString < ActiveRecord::Migration
  def change
  	add_column :event_photos, :event_photo, :string

  end
end
