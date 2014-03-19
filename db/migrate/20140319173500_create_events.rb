class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :tagline
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.text :more_info
      t.string :photo1
      t.string :photo2
      t.string :photo3
      t.string :website
      t.string :facebook
      t.string :application_form
      t.string :contact_name
      t.string :contact_email

      t.timestamps
    end
  end
end
