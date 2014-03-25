class Profile < ActiveRecord::Base
  belongs_to :member
  validates :name, presence: true
end
