class Event < ActiveRecord::Base
	default_scope order('date ASC')
	include PgSearch
	multisearchable against: [:state]
  has_many :event_photos
  belongs_to :member
  validates :title, :date, :time, :address, :city, :state, :zip, presence: true
  acts_as_followable
  acts_as_likeable
  

end
