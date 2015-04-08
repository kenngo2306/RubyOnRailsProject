class ProjectSiteInformation < ActiveRecord::Base
  belongs_to :project_site
  belongs_to :project

  has_many :project_type_informations
  has_many :project_types, through: :project_type_informations
  has_many :project_utilities
  has_many :utilities, through: :project_utilities

  validates_presence_of :area_length, :area_width, :area_description, :project_id
  validates_length_of :area_length, :area_width, maximum: 5
  validates_length_of :area_description, :soil_conditions, maximum: 150
  validates_uniqueness_of :project_id

  def self.getAllFromProjectID(project_id)
    ProjectSiteInformation.where('project_id = ?', project_id)
  end
end
