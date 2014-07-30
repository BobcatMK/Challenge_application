class LazyDoertwo
  include Sidekiq::Worker
  sidekiq_options retry: false
  
  def perform(user_email,answer_contents,question_title)
    UserMailer.accepted_email(user_email,answer_contents,question_title).deliver
  end
end