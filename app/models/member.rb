class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  has_many :events
  has_one :profile
  acts_as_follower
  acts_as_liker

  after_create :email_new_member


  private

  def email_new_member
    MemberMailer.welcome(self).deliver
  end

  def self.find_or_create_for_facebook(auth)
    token = AuthToken.find_or_initialize_by_email_and_provider_and_oauth_token( auth[:email], auth[:provider], auth[:token])
    token.uid = auth[:uid]
    token.save
    email = auth[:email]
    pass = auth[:uid]   #Devise.friendly_token
    user = token.member || token.create_member(email: email, password: pass, password_confirmation: pass )
  end

end
