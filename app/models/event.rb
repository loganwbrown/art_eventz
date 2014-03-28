class Event < ActiveRecord::Base
  has_many :event_photos
  belongs_to :member
  validates :title, :date, :time, :address, :city, :state, :zip, :more_info, presence: true
  
end
