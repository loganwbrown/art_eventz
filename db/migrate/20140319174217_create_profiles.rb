class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :avatar
      t.string :tagline
      t.string :website1
      t.string :website2
      t.string :website3
      t.string :facebook
      t.string :twitter
      t.text   :bio
      t.string :pic1
      t.string :pic2
      t.string :pic3
      t.string :pic4
      t.string :pic5
      t.string :pic6
      t.integer :member_id

      t.timestamps
    end
  end
end
