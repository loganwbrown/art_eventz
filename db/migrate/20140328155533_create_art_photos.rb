class CreateArtPhotos < ActiveRecord::Migration
  def change
    create_table :art_photos do |t|
    	t.string :art_photo
    	t.integer :profile_id
      t.timestamps
    end
  end
end
