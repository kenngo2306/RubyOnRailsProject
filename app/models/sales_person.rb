class SalesPerson < ActiveRecord::Base
  has_one :user
  has_many :projects

  def sales_person_fullname
    "#{sales_person_first_name} #{sales_person_last_name}"
  end

  validates_presence_of :sales_person_first_name, :sales_person_last_name, :sales_person_email, :sales_person_phone
  validates_format_of :sales_person_phone, :with => /[0-9]{3}-[0-9]{3}-[0-9]{4}/, :message => "- Phone numbers must be in xxx-xxx-xxxx format."
  validates_format_of :sales_person_email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :message => "- Email format incorrect (Example: user@mail.com)"
  validates_length_of :sales_person_first_name, :sales_person_last_name, :maximum => 50
end
