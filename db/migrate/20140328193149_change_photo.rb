class ChangePhoto < ActiveRecord::Migration
  def change
  	remove_column :event_photos, :event_photo, :string
  	add_column :event_photos, :photo, :string

  end
end
