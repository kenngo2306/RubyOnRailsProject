class ProjectRequestedSalesDocument < ActiveRecord::Base

  belongs_to :project
  belongs_to :requested_sales_document
end
