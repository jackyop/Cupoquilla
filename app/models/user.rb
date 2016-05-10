class User < ActiveRecord::Base
	attr_accessible :name,  :email, :password, :passsword_confirmation
	has_secure_password
	has_many :coupons, dependent: :destroy
	has_many :compras, dependent: :destroy
	before_save{ |user| user.email=email.downcase }
	before_save :create_remember_token
	validates :password,:length => { :minimum => 5 }
  	validates_confirmation_of :password
  	validates(:name, presence: true,length:{maximum:50})
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates(:email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive:false})
private
	def create_remember_token
		self.remember_token = SecureRandom.urlsafe_base64
	end
end
