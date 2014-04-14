require 'spec_helper'

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

end



#test the mailer