class SalesPerson < ActiveRecord::Base
  has_one :user
  has_many :projects
end
