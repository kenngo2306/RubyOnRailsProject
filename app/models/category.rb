class Category < ActiveRecord::Base

  has_many :category_options
  belongs_to :project_type
end
