class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :events
  has_one :profile
  
  after_create :email_new_member

  private

  def email_new_member
    MemberMailer.welcome(self).deliver
  end

end

