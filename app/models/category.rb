class Category < ActiveRecord::Base

  has_many :category_options
  belongs_to :project_type
  belongs_to :category_type
  accepts_nested_attributes_for :category_options, allow_destroy: true

  validates_presence_of :category_name, :project_type_id
  validates_length_of :category_name, maximum: 60
end
