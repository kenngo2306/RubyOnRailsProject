class StatusCategory < ActiveRecord::Base
  has_many :project_statuses
end
