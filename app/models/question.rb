class Question < ActiveRecord::Base

  belongs_to :project_type
  has_many :answers
end
