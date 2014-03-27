require 'spec_helper'

describe Dashboard::EventsController do

  describe '#index' do
    example do
      member = create(:member)
      sign_in(member)
      events = member.events.all
      event = member.events.create
      get :index, {id: member.id}
      expect(member.email).to eq (event.member.email)
      expect(:events).to_not be_empty
    end
  end

  describe '#show' do
    example do
      event = create(:event, title: 'A to Z')
      get :show, {id: event.id, member_id: event.member_id}
      expect(event.title).to eq 'A to Z'
    end
  end

  describe '#create' do
    before do
      @member = create(:member)
      sign_in(:member, @member)
    end
    context 'when the event is valid' do
      example do
        expect {
          post :create, {member_id: @member.id, event: {title: 'thing', address: '337 6th St', address2: 'upstairs', city: 'Las Vegas', state: 'NV', zip: '89120', more_info: 'blah blah blah blah blah' }}
        }.to change(@member.events, :count).by(1)
        assert_response :redirect
        expect(response).to redirect_to dashboard_event_path(@member.events.first.id)
      end
    end
    context 'when the event is invalid' do
      example do
        post :create, {member_id: @member.id, event: {title: nil}}
        expect(response).to render_template :new
        expect(@member.events.count).to eq 0
      end
    end
  end

  describe '#update' do
    context "when success" do
      before do
        @event = create(:event, title: "Milk" )
        @member = @event.member
        sign_in(:member, @member)
      end
      example 'When event is updated' do
        put :update, {id: @event.id, event: {title: "Water"}}
        @event.reload
        expect(@event.title).to eq("Water")
      end
    end
  end

  describe '#destroy' do
    context "when destroy works" do
      before do
        @event = create(:event, title: "Milk" )
        @member = @event.member
        sign_in(:member, @member)
      end
      example 'When event is updated' do
        delete :destroy, {id: @event.id, event: {title: "Milk"}}
        expect(@member.events.count).should eq 0
      end
    end 
  end
end
# class EventsControllerTest < ActionController::TestCase
#   test "should get index" do
#     get :index
#     assert_response :success
#   end

#   test "should get show" do
#     get :show
#     assert_response :success
#   end

#   test "should get update" do
#     get :update
#     assert_response :success
#   end

#   test "should get edit" do
#     get :edit
#     assert_response :success
#   end

#   test "should get destroy" do
#     get :destroy
#     assert_response :success
#   end

#   test "should get create" do
#     get :create
#     assert_response :success
#   end

# end
