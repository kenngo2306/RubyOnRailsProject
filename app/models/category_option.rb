class CategoryOption < ActiveRecord::Base

  belongs_to :category
  has_many :category_option_selections
end
