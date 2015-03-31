class ProjectSite < ActiveRecord::Base

  belongs_to :state
  # has_many :projects, through: :project_site_informations
  has_many :project_site_informations
  accepts_nested_attributes_for :project_site_informations
  has_many :projects, through: :project_site_informations
end
