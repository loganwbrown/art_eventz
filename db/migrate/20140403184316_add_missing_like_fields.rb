class AddMissingLikeFields < ActiveRecord::Migration
  def change
    add_column(:likes, :liker_type, :string)
    add_column(:likes, :liker_id, :integer)
    add_column(:likes, :likeable_type, :string)
    add_column(:likes, :likeable_id, :integer)

    add_index :likes, ["liker_id", "liker_type"],   :name => "fk_likes"
    add_index :likes, ["likeable_id", "likeable_type"], :name => "fk_likeables"
  end
end
