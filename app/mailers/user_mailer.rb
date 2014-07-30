class UserMailer < ActionMailer::Base
  default from: "matthew.kilan@gmail.com"
  
  def send_email(question_owner,cur_user,answer,question)
    @question_owner = question_owner
    @cur_user = cur_user
    @answer = answer
    @question = question
    mail(to: @question_owner.email, subject: "Answer added to your question:")
  end
  
  def accepted_email(user,answer,question)
    @user = user
    @answer = answer
    @question = question
    mail(to: @user.email, subject: "Your answer has been accepted")
  end
end
