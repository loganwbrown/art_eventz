require 'spec_helper'

describe StaticPagesController do

  describe '#index' do
    example do
      create(:profile)
      get :index
      expect((:profiles)).to_not be_empty
    end
  end
  
