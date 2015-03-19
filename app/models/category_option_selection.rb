class CategoryOptionSelection < ActiveRecord::Base

  belongs_to :project_type_information
  belongs_to :category_option

end
