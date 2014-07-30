class UserMailer < ActionMailer::Base
  default from: "matthew.kilan@gmail.com"
  
  def send_email(question_owner_email,cur_user_name,answer_contents,question_title)
    @question_owner_email = question_owner_email
    @cur_user_name = cur_user_name
    @answer_contents = answer_contents
    @question_title = question_title
    mail(to: @question_owner_email, subject: "Answer added to your question:")
  end
  
  def accepted_email(user_email,answer_contents,question_title)
    @user_email = user_email
    @answer_contents = answer_contents
    @question_title = question_title
    mail(to: @user_email, subject: "Your answer has been accepted")
  end
end