class SalesPerson < ActiveRecord::Base
  has_one :user
  has_many :projects

  def sales_person_fullname
    "#{sales_person_first_name} #{sales_person_last_name}"
  end

end
