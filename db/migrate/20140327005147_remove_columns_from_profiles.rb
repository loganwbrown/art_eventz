class RemoveColumnsFromProfiles < ActiveRecord::Migration
  def change
  	remove_column :profiles, :pic1, :string
  	remove_column :profiles, :pic2, :string
  	remove_column :profiles, :pic3, :string
  	remove_column :profiles, :pic4, :string
  	remove_column :profiles, :pic5, :string
  	remove_column :profiles, :pic6, :string

  end
end
