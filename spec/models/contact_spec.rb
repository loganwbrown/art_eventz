require 'spec_helper'
require 'sidekiq/testing'


describe Contact do
  it 'sends out an AdminMailer' do
    contact = build(:contact)
    expect { contact.save }.to change(Sidekiq::Extensions::DelayedMailer.jobs, :size).by(1) 
  end
end