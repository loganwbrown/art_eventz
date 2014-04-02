class Contact < ActiveRecord::Base

  after_create :email_contact_info

  private

  def email_contact_info
    AdminMailer.contact_form(self).deliver
  end

end