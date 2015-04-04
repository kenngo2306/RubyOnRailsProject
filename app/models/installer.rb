class Installer < ActiveRecord::Base
  has_one :user

  def installer_name
    "#{installer_first_name} #{installer_last_name}"
  end
end
