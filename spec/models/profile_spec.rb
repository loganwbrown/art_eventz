require 'test_helper'

describe List do

  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_uniqueness_of :name }
  end

  describe 'associations' do
    it { should have_many :events }
  end
end

# class ProfileTest < ActiveSupport::TestCase
#   # test "the truth" do
#   #   assert true
#   # end
# end
