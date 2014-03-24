require 'test_helper'


describe Event do

  describe 'validations' do
    it { should validate_presence_of :title }
  end

  describe 'associations' do
    it { should belong_to :member }
  end

end

# class EventTest < ActiveSupport::TestCase
#   # test "the truth" do
#   #   assert true
#   # end
# end
