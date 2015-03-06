class Category < ActiveRecord::Base

  has_many :category_options
  belongs_to :project_type
  accepts_nested_attributes_for :category_options, allow_destroy: true
end
