class RequestedSalesDocument < ActiveRecord::Base

  has_many :projects, through: :project_requested_sales_documents
end
