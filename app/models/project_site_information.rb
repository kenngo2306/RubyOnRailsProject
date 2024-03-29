class ProjectSiteInformation < ActiveRecord::Base
  belongs_to :project_site
  belongs_to :project

  has_many :project_type_informations, :dependent => :delete_all
  has_many :project_types, through: :project_type_informations
  has_many :project_utilities, :dependent => :delete_all
  has_many :utilities, through: :project_utilities



  validates_length_of :area_length, :area_width, maximum: 5
  validates_length_of :area_description, :soil_condition, maximum: 150
  # validates_uniqueness_of :project_id

  def self.getAllFromProjectID(project_id)
    ProjectSiteInformation.where('project_id = ?', project_id)
  end
end
