class ProjectTypeInformation < ActiveRecord::Base


  belongs_to :project_type
  belongs_to :project_site_information

  has_many :answers, :dependent => :delete_all
  has_many :questions, through: :answers
  has_many :category_option_selections, :dependent => :delete_all
  has_many :category_options, through: :category_option_selections
  accepts_nested_attributes_for :category_option_selections


  validates_presence_of  :project_type_id
  validates_length_of :wind_load, :building_code, maximum: 40
end
