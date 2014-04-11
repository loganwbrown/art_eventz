require 'spec_helper'

describe AuthToken do

  describe 'associations' do
    it { should belong_to :member }
  end
end
