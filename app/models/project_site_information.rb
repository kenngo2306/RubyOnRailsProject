class ProjectSiteInformation < ActiveRecord::Base

  belongs_to :project
  belongs_to :project_site
  has_many :project_types, through: :project_type_informations
  has_many :soil_conditions, through: :project_soil_conditions
  has_many :utilities, through: :project_utilities
end
