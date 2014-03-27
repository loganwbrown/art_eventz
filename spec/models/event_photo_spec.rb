require 'spec_helper'

describe EventPhoto do
  describe 'associations' do
    it { should belong_to :event }
  end
end
  