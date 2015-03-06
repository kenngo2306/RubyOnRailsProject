class ProjectSoilCondition < ActiveRecord::Base

  belongs_to :project_site_information
  belongs_to :soil_condition
end
