class ProjectType < ActiveRecord::Base

  has_many :project_type_informations
  has_many :project_site_informations, through: :project_type_informations
  has_many :categories
  has_many :questions

  accepts_nested_attributes_for :questions, allow_destroy: true
  accepts_nested_attributes_for :categories, allow_destroy: true

end

