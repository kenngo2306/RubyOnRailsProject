class Installer < ActiveRecord::Base
  has_one :user

  validates_presence_of :installer_first_name, :installer_phone, :installer_last_name, :installer_email
  validates_length_of :installer_first_name, maximum: 50
  validates_length_of :installer_last_name, maximum: 50
  validates_length_of :installer_email, maximum: 50
  validates_format_of :installer_email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :message => "- Email format incorrect (Example: user@mail.com)"
  validates_length_of :installer_phone, maximum: 50
  validates_format_of :installer_phone, :with => /[\(]?\d\d\d[\)\- ]?\d\d\d[- ]?\d\d\d\d/, :message => "- Phone numbers must be in xxx-xxx-xxxx format."

  def installer_name
    "#{installer_first_name} #{installer_last_name}"
  end
end
