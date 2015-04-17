class Client < ActiveRecord::Base

  has_many :contacts

  belongs_to :state
  accepts_nested_attributes_for :contacts, allow_destroy: true

  validates_presence_of :client_name, :billing_address, :billing_city, :billing_zip, :state_id
  validates_length_of :client_name, :billing_address, :maximum => 50
  validates_length_of :billing_city, :maximum => 25
  validates_length_of :billing_zip, :maximum => 9


end
