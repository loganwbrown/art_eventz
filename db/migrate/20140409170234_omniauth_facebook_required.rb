class OmniauthFacebookRequired < ActiveRecord::Migration
	def change
    create_table :auth_tokens do |t|
    	t.integer :member_id
    	t.string :provider
    	t.string :oauth_token
    	t.string :uid
    	t.string :name
    	t.datetime :oauth_expires_at
      t.timestamps
    end
    add_index :auth_tokens, :member_id
  end
end
