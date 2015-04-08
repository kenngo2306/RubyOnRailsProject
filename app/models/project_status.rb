class ProjectStatus < ActiveRecord::Base

  has_many :projects
  belongs_to :status_category

  validates_presence_of :project_status_name, :status_category_id
  validates_length_of :project_status_name, :maximum => 50
end
