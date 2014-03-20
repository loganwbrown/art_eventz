class Event < ActiveRecord::Base
  
  belongs_to :member
  validates :title, :address, :address2, :city, :state, :zip, :more_info, presence: true
  
end
