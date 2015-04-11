class StatusCategory < ActiveRecord::Base
  has_many :project_statuses

  validates_presence_of :status_category_name
  validates_length_of :status_category_name, :maximum => 50



end
