class AdminMailer < ActionMailer::Base
  default from: "contact@arteventz.com"
  default to: "djhansen@me.com"


  def contact_form(contact)
    @contact = contact
    mail(subject: "New Contact Us form Submission")
  end

end