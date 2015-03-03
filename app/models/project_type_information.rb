class ProjectTypeInformation < ActiveRecord::Base

  belongs_to :project_type
  belongs_to :project_site_information
end
