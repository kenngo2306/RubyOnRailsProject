class Utility < ActiveRecord::Base
  has_many :project_utilities
  has_many :project_site_informations, through: :project_utilities
end
