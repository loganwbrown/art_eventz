class MemberMailer < ActionMailer::Base
  layout "mailer"
  default from: "no_reply@arteventz.com"

  
  def welcome(member)
    @member = member
    mail(to: @member.email, subject: "Welcome to arteventz!")
  end

  def newsletter(params)
    @params = params
    mail(to: @params[:email], subject: "arteventz Newsletter")
  end
end