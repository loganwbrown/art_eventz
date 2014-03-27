class Profile < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader


  belongs_to :member
  validates :name, presence: true
end
