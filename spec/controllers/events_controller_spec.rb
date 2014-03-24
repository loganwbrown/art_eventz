require 'spec_helper'

describe EventsController do

  describe '#index' do
    example do
      item = create(:item)
      get :index, {member_id: event.member_id}
      expect(assigns(:member).name).to eq event.member.name
      expect(assigns(:events)).to_not be_empty
    end
  end

  describe '#show' do
    example do
      event = create(:event, title: 'A to Z')
      get :show, {id: event.id, member_id: event.member_id}
      expect(assigns(:event).content).to eq 'A to Z'
    end
  end

  describe '#create', do
    before do
      @member = create(:member)
    end
    context 'when the event is valid' do
      example do
        expect {
          post :create, {member_id: @member.id, event: {title: 'thing'}}
        }.to change(@member.events, :count).by(1)
        assert_response :redirect
        expect(response).to redirect_to member_events_path(@member)
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
    pending
  end

  describe '#destroy' do
    pending
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
