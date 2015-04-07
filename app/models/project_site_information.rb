class ProjectSiteInformation < ActiveRecord::Base
  belongs_to :project_site
  belongs_to :project

  has_many :project_type_informations
  has_many :project_types, through: :project_type_informations
  has_many :project_utilities
  has_many :utilities, through: :project_utilities

  def self.getAllFromProjectID(project_id)
    ProjectSiteInformation.where('project_id = ?', project_id)
  end
end
