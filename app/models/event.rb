class Event < ActiveRecord::Base
  has_many :event_photos
  belongs_to :member
  acts_as_followable
  acts_as_likeable
  #validates :title, :date, :time, :address, :city, :state, :zip, :more_info, presence: true

end
