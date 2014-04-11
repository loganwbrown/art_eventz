class AddEmailToAuthToken < ActiveRecord::Migration
  def change
  	add_column :auth_tokens, :email, :string

  end
end
