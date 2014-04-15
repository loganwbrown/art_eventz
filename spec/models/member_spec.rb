require 'spec_helper'
require 'sidekiq/testing'

describe Member do
  describe 'validations' do
    it { should validate_presence_of :email }
    it { should validate_presence_of :password }
  end
   describe 'associations' do
    it { should have_many :events }
  end
   describe 'associations' do
    it { should have_one :profile }
  end



  it 'sends out an NewMemberMailer' do
    contact = build(:member)
    expect { contact.save }.to change(Sidekiq::Extensions::DelayedMailer.jobs, :size).by(1) 
  end

  describe 'self.find_or_create_for_facebook' do

    before do 
      @auth = {email: 'testing@something.com', uid: '12345678', provider: 'Facebook', token: '123' }
      @auth2 = { email: 'test2@something.com', uid: '345', provider: 'Facebook', token: '345' }                                                                          
      @member = create(:member, email: 'testing@something.com', password: @auth[:uid], password_confirmation: @auth[:uid] )
    
    end


  it 'returns an existing user' do 
      expect {
       Member.find_or_create_for_facebook(auth)
      }
   end
 end
end



#need to create the test for this!!!

#before do 
#   @auth = {email: 'testing@something', uid: '123', ...}
#   @auth2 = {}
#}  @member = create(:member, email: 'test@something')
#  end
#
#
# it 'returns an existing user' do 
#   expect {
#       Member.find_or_create_for_facebook(auth).id 
#     }.to eq @member.id
#   end
#
#
#     it 'makes a new member' do
#     #   expect {
#       Member.find_or_create_for_facebook(auth).id 
#     }.to eq change(Member, :count).by(1)
#   end
