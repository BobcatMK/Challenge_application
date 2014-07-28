class Question < ActiveRecord::Base
  belongs_to :user;
  has_many :answers;

  validates_presence_of :title, :message => "can't be empty"
  validates_presence_of :contents, :message => "can't be empty"
  validates_length_of :title, minimum: 3, :message => "is two short, at least 3 characters are required"
  validates_length_of :contents, minimum: 10, :message => "two short, at least 10 characters are required"
end
