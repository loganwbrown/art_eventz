require 'spec_helper'

describe LikesController do

  describe '#create' do
    before do
      @member = create(:member)
      sign_in(:member, @member)
    end

    context 'when the like is valid' do
      example do
        expect {
          post :create, {member_id: @member.id, like: }
        }.to change(@event.member.likes, :count).by(1)
        assert_response :redirect
        expect(response).to redirect_to event_path(@member.likes.first.id)
      end
    end
    context 'when the like is invalid' do
      example do
        post :create, {member_id: @member.id, like: }
        expect(response).to render_template :new
        expect(@member.events.count).to eq 0
      end
    end
  end
end 