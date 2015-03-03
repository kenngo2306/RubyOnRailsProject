class ProjectUtility < ActiveRecord::Base

  belongs_to :utility
  belongs_to :project_site_information
end
