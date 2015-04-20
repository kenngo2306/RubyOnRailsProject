class ProjectType < ActiveRecord::Base

  has_many :project_type_informations, :dependent => :delete_all
  has_many :project_site_informations, through: :project_type_informations
  has_many :categories
  has_many :questions

  accepts_nested_attributes_for :questions, allow_destroy: true
  accepts_nested_attributes_for :categories, allow_destroy: true


  validates_presence_of :project_type_name
  validates_length_of :project_type_name, maximum: 20

  def hasQuestion?
    if questions.count > 0 || categories.count > 0 || project_site_informations.count >0
      true
    else
      false
    end
  end
end

