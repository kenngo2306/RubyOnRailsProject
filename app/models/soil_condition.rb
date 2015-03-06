class SoilCondition < ActiveRecord::Base

  has_many :project_site_informations, through: :project_soil_conditions
end
