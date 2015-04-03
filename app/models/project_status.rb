class ProjectStatus < ActiveRecord::Base

  has_many :projects
  belongs_to :status_category

end
