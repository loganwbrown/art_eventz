require 'spec_helper'

describe ArtPhoto do

  describe 'associations' do
    it { should belong_to :profile }
  end
end
