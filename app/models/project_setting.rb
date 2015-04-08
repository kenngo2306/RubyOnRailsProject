class ProjectSetting < ActiveRecord::Base

  has_many :projects

  validates_presence_of :project_setting_name
  validates_length_of :project_setting_name, :maximum => 50
end
