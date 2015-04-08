class DealType < ActiveRecord::Base

  has_many :projects

  validates_presence_of :deal_type_name
  validates_length_of :deal_type_name, maximum: 50
end
