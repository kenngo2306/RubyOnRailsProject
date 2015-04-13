class ProjectContact < ActiveRecord::Base

  belongs_to :project
  belongs_to :contact

  # validates_presence_of :project_id, :contact_id
end
