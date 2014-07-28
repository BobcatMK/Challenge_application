class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user
  has_many :likers
  
  validates_presence_of :contents, :message => "can't be empty"
  validates_length_of :contents, minimum: 2, :message => "to short, minimum 2 characters required"
end
