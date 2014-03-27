class Event < ActiveRecord::Base
  has_many :event_photos
  belongs_to :member
  validates :title, :address, :address2, :city, :state, :zip, :more_info, presence: true
  
end
