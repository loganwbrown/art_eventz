require 'spec_helper'


describe Event do

  describe 'validations' do
    it { should validate_presence_of :title }
  end

  describe 'validations' do
    it { should validate_presence_of :date }
  end

  describe 'validations' do
    it { should validate_presence_of :time }
  end

  describe 'validations' do
    it { should validate_presence_of :address }
  end

  describe 'validations' do
    it { should validate_presence_of :city }
  end

  describe 'validations' do
    it { should validate_presence_of :state }
  end

  describe 'validations' do
    it { should validate_presence_of :zip }
  end

  describe 'associations' do
    it { should belong_to :member }
  end

  describe 'associations' do
    it { should have_many :event_photos }
  end




end

# class EventTest < ActiveSupport::TestCase
#   # test "the truth" do
#   #   assert true
#   # end
# end
