class ProjectSite < ActiveRecord::Base

  belongs_to :state
  has_many :projects, through: :project_site_informations
end
