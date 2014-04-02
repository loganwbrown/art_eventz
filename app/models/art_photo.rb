class ArtPhoto < ActiveRecord::Base
	mount_uploader :photo, ArtPhotoUploader

	belongs_to :profile
end
