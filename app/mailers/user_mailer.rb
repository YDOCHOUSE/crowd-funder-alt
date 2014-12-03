class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email(user)
  	@user = user
  	# @login = projects_path
  	@url = 'http://0.0.0.0:3000'
  	mail(to: @user.email, subject: "Welcome to Crowdfunder!")
  end

end
