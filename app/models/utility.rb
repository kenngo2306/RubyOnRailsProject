class Utility < ActiveRecord::Base
  has_many :project_utilities
  has_many :project_site_informations, through: :project_utilities

  validates_presence_of :utility_name
  validates_length_of :utility_name, :maximum => 50
end
