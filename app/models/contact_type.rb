class ContactType < ActiveRecord::Base

  has_many :contacts

  validates_presence_of :contact_type_name
  validates_length_of :contact_type_name, maximum: 50
end
