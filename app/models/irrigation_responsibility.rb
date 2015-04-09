class IrrigationResponsibility < ActiveRecord::Base

  has_many :projects
  validates_presence_of :irrigation_responsibility_name
  validates_length_of :irrigation_responsibility_name, :maximum => 15
end
