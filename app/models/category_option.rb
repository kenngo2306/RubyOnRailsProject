class CategoryOption < ActiveRecord::Base

  belongs_to :category
  has_many :category_option_selections
  has_many :project_type_informations, through: :category_option_selections
end
