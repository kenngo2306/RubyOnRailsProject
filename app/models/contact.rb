class Contact < ActiveRecord::Base

  belongs_to :client
  belongs_to :contact_type
  belongs_to :state
  has_many :projects, through: :project_contacts
end
