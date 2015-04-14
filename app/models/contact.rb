class Contact < ActiveRecord::Base

  belongs_to :client
  belongs_to :contact_type
  belongs_to :state
  has_many :project_contacts
  accepts_nested_attributes_for :project_contacts
  has_many :projects, through: :project_contacts



  validates_presence_of :contact_first_name, :contact_last_name, :contact_email,
                        :contact_work, :contact_address, :contact_city, :contact_zip,
                        :state_id, :contact_type_id
  validates_length_of :contact_first_name, :contact_last_name, :contact_address, :maximum => 50
  validates_length_of :contact_city, :maximum => 25
  validates_length_of :contact_zip, :maximum => 9
  validates_format_of :contact_cell, :contact_work, :with => /[\(]?\d\d\d[\)\- ]?\d\d\d[- ]?\d\d\d\d/, :message => "- Phone numbers must be in xxx-xxx-xxxx format."
  validates_format_of :contact_email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :message => "- Email format incorrect (Example: user@mail.com)"

  def full_contact_name
    "#{contact_first_name} #{contact_last_name}"
  end

  def full_address
    "#{contact_address}  #{contact_city}, #{state.state_name} #{contact_zip} "
  end
end
