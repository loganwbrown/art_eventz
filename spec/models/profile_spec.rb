require 'spec_helper'

describe Profile do

  describe 'validations' do
    it { should validate_presence_of :name }
  end

  describe 'associations' do
    it { should belong_to :member }
  end
  describe 'associations' do
    it { should have_many :art_photos }
  end

end

# class ProfileTest < ActiveSupport::TestCase
#   # test "the truth" do
#   #   assert true
#   # end
# end
