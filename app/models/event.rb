class Event < ActiveRecord::Base
  has_many :event_photos
  belongs_to :member
  validates :title, :date, :time, :address, :city, :state, :zip, :more_info, presence: true
	accepts_nested_attributes_for :event_photos, :allow_destroy => true

end
