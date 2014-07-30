class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :omniauthable
  # :recoverable, :rememberable and :trackable
  devise :database_authenticatable, :registerable, :validatable
  has_attached_file :avatar, :styles => { :small => "100x100>" }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  
  # has_attached_file :superstarbadge, :styles => { :small => "100x100>" } 
  # validates_attachment_content_type :superstarbadge, :content_type => /\Aimage\/.*\Z/

  has_many :questions
  has_many :answers
  
  def to_s
    email
  end
end
