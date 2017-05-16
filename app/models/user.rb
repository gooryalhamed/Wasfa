class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :likes
  has_many :food_recipes, :through => :likes
  has_many :comments
  has_many :food_recipes, :through=> :comments
  
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable, 
  :omniauthable, :omniauth_providers => [:facebook]
  validates :username, presence: true, length: {maximum:14}, uniqueness: true
  def self.from_omniauth(auth)
  	where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  		user.provider = auth.provider
  		user.uid = auth.uid
      user.username = auth.info.name
  		user.email = auth.info.email
  		user.password = Devise.friendly_token[0,20]
  	end
  end
  enum role: [:normal,:admin]
  after_initialize :set_default_role, :if => :new_record?
  def set_default_role 
    self.role ||= :normal
  end
  def guest?
    persisted?
  end
end
