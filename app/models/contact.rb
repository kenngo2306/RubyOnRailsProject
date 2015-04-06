class Contact < ActiveRecord::Base

  belongs_to :client
  belongs_to :contact_type
  belongs_to :state
  has_many :projects_contacts
  has_many :projects, through: :project_contacts

  def full_contact_name
    "#{contact_first_name} #{contact_last_name}"
  end
end
