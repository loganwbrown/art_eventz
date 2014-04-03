class Event < ActiveRecord::Base
	include PgSearch
	multisearchable against: [:state]

  has_many :event_photos
  belongs_to :member
  validates :title, :date, :time, :address, :city, :state, :zip, :more_info, presence: true

  def self.search(query)
	  if query.present?
	    search(query)
	  else
	    scoped
	  end
	end
	
end
