class ProjectSite < ActiveRecord::Base

  belongs_to :state
  # has_many :projects, through: :project_site_informations
  has_many :project_site_informations
  accepts_nested_attributes_for :project_site_informations
  has_many :projects, through: :project_site_informations

  validates_presence_of :site_name, :site_address, :site_city, :site_zip, :state_id
  validates_length_of :site_name, :site_address, :site_city, maximum: 40
  validates_length_of :site_access, maximum: 150
  validates_length_of :site_zip, maximum: 15

  def get_address
    "#{site_address}, #{site_city}, #{state.state_name}, #{site_zip}"
  end
end
