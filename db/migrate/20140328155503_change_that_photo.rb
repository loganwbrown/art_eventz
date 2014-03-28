class ChangeThatPhoto < ActiveRecord::Migration
  def change
  	add_column :profiles, :art_photo1, :string
  	add_column :profiles, :art_photo2, :string
  	add_column :profiles, :art_photo3, :string

  end
end
