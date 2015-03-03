class ProjectType < ActiveRecord::Base

  has_many :project_site_informations, through: :project_type_informations
  has_many :categories
  has_many :questions
end
