class Question < ActiveRecord::Base

  belongs_to :project_type
  has_many :answers, :dependent => :delete_all

  # validates_presence_of :question_name, :project_type_id
  validates_length_of :question_name, :maximum => 80
end
