class EventPhoto < ActiveRecord::Base
	mount_uploader :photo, EventPhotoUploader
	belongs_to :event

end
