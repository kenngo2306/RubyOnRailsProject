class User < ActiveRecord::Base
	belongs_to :installer
	belongs_to :salesperson
	
	enum role: [:admin, :salesrep, :insidesales, :installer]
	after_initialize :set_default_role, :if => :new_record?
	
	
	def set_default_role
		self.role ||= :admin
	end

	def self.emailval
		validates_uniqueness_of :email
	end

  validates_presence_of :name, :email, :password
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :message => "- Email format incorrect (Example: user@mail.com)"
  validates_length_of :name, maximum: 30

	# Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
		:recoverable, :rememberable, :trackable, :validatable, :lockable
	end
