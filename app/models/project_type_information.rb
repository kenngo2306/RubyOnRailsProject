class ProjectTypeInformation < ActiveRecord::Base

  belongs_to :project_type
  belongs_to :project_site_information
  has_many :category_options
  has_many :questions, :through => :answers
end
