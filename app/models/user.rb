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
	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
		:recoverable, :rememberable, :trackable, :validatable
	end
