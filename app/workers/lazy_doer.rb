class LazyDoer
  include Sidekiq::Worker
  sidekiq_options retry: false
  
  def perform(question_owner_email,current_user_name,answer_contents,question_title)
    UserMailer.send_email(question_owner_email,current_user_name,answer_contents,question_title).deliver
  end
end