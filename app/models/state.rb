class State < ActiveRecord::Base

  has_many :project_sites
  has_many :clients
  has_many :contacts
end
