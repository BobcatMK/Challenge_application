class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :omniauthable
  # :recoverable, :rememberable and :trackable
  devise :database_authenticatable, :registerable, :validatable, :omniauthable
  has_attached_file :avatar, :styles => { :small => "100x100>" }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  validates_presence_of :name
  
  # has_attached_file :superstarbadge, :styles => { :small => "100x100>" } 
  # validates_attachment_content_type :superstarbadge, :content_type => /\Aimage\/.*\Z/

  has_many :questions
  has_many :answers
  
  def self.from_omniauth(auth)
    where(auth.slice(:provider,:uid)).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.nickname
      user.email = auth.info.email
    end
  end
  
  def self.new_with_session(params,session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"],without_protection: true) do |user|
        user.attributes = params
        user.valid?
      end
    else
      super
    end
  end
  
  def password_required?
    super && provider.blank?
  end
  
  def update_with_password(params,*options)
    if encrypted_password.blank?
      update_attributes(params,*options)
    else
      super
    end
  end
  
  def to_s
    email
  end
end
