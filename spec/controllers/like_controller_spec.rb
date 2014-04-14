require 'spec_helper'

# describe LikesController do

#   describe '#create', focus do
#     before do
#       @member = create(:member)
#       sign_in(:member, @member)
#       @event = create(:event, title: 'thing', date: '04/11/2014', time: '22:00', address: '337 6th St', address2: 'upstairs', city: 'Las Vegas', state: 'NV', zip: '89120', more_info: 'blah blah blah blah blah')
     
#     end

#     context 'when the like is valid' do
#       example do
#         expect {
#         post :create, {member_id: @member.id, event: @event }
#         }.to change(@event.member.likes :count).by(1)
#         assert_response :redirect
#         # expect(response).to redirect_to event_path(@member.likes.first.id)
#       end
#     end
#     context 'when the like is invalid' do
#       example do
#         post :create, {member_id: @member.id, like: }
#         expect(response).to render_template :new
#         expect(@member.events.count).to eq 0
#       end
#     end
#   end
# end 