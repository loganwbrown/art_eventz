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


end



# class MemberTest < ActiveSupport::TestCase
#   # test "the truth" do
#   #   assert true
#   # end
# end
