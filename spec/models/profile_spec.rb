require 'spec_helper'

describe Profile do

  describe 'validations' do
    it { should validate_presence_of :name }
  end
end

# class ProfileTest < ActiveSupport::TestCase
#   # test "the truth" do
#   #   assert true
#   # end
# end
