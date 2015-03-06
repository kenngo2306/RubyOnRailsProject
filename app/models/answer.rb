class Answer < ActiveRecord::Base

  belongs_to :question
  belongs_to :project_type_information
end
