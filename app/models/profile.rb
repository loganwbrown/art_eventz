class Profile < ActiveRecord::Base
  has_many :art_photos
  belongs_to :member
  validates :name, presence: true
  mount_uploader :avatar, AvatarUploader

end
