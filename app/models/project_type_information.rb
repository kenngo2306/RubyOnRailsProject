class ProjectTypeInformation < ActiveRecord::Base


  belongs_to :project_type
  belongs_to :project_site_information

  has_many :answers
  has_many :questions, through: :answers
  has_many :category_option_selections
  has_many :category_options, through: :category_option_selections
  accepts_nested_attributes_for :category_option_selections

  validates_uniqueness_of :proposal_number, :revision_number, :project_id
  validates_presence_of :project_id, :project_type_id
end
