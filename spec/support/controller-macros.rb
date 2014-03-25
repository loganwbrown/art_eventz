module ControllerMacros

  def login_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:members]
        member = FactoryGirl.create(:member)
        member.confirm!
        sign_in member
      end

      
  end
end