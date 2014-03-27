require 'spec_helper'

describe Dashboard::ProfilesController do

  describe '#index' do
    example do
      create(:profile)
      get :index
      expect((:profiles)).to_not be_empty
    end
  end

  describe '#show' do
    example do
      profile = create(:profile, name: 'Vlad Putin')
      get :show, {id: profile.id}
      expect(profile.name).to eq 'Vlad Putin'
    end
  end

  describe '#create' do
    context 'when the record is valid' do
      it 'works if the member is signed in' do
        member = create(:member)
        sign_in member
        expect(subject.current_member).to_not be_nil
        expect {
          post :create, {profile: {name: 'Vlad', tagline: 'groceries'}}
        }.to change(Profile, :count).by 1
        assert_response :redirect
      end
      it 'redirects the member if they are not signed in' do
        post :create, {profile: {name: 'Vlad', description: 'groceries'}}
        expect(Profile.count).to eq 0
        expect(response).to redirect_to new_member_session_path
      end
    end
    context 'when the record is invalid' do
      example do
        member = create(:member)
        sign_in member
        expect {
          post :create, {profile: {name: nil}}
        }.to_not change(Profile, :count)
        expect(response).to render_template :new
      end
    end
  end

  describe '#update' do
    before do
      member = create(:member)
      sign_in member
      @profile = create(:profile, name: 'Vlad', tagline: 'groceries')
      sign_in(:profile, @profile)
      
    end
    context 'when the record updates successfully' do
      example do
        put :update, {id: @profile.id, profile: {name: 'Vlad'}}
        expect(assigns(:profile)).to eq @profile
        that_profile = Profile.find(@profile.id)
        expect(that_profile.name).to eq 'Vlad'
        assert_response :redirect
      end
    end
    context 'when the record does not update' do
      example do
        put :update, {id: @profile.id, profile: {name: nil}}
        expect(response).to render_template :edit
      end
    end
  end

  describe '#destroy', :focus do
    before do
      member = create(:member)
      sign_in member
      @profile = create(:profile, name: 'Vlad', tagline: 'groceries')
      sign_in(:profile, @profile)
    end
    example do
      @profile.destroy
      expect(@profile) == nil
    end
  end

end

# class ProfileControllerTest < ActionController::TestCase
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
