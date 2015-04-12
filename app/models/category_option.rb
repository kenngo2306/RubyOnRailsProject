class CategoryOption < ActiveRecord::Base

  belongs_to :category
  has_many :category_option_selections
  has_many :project_type_informations, through: :category_option_selections

  validates_presence_of :category_option_name, :category_id
  validates_length_of :category_option_name, maximum: 40
end
