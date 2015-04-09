class State < ActiveRecord::Base

  has_many :project_sites
  has_many :clients
  has_many :contacts

  validates_presence_of :state_name, :state_abbreviation
  validates_length_of :state_name, maximum: 50
  validates_length_of :state_abbreviation, maximum: 2
  validates_length_of :state_abbreviation, minimum: 2
end
