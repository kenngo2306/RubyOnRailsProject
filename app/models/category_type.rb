class CategoryType < ActiveRecord::Base
  has_many :categories

  validates_presence_of :category_type_name
  validates_length_of :category_type_name, :maximum => 20
end
