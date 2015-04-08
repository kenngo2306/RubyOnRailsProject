class RequestedSalesDocument < ActiveRecord::Base

  has_many :project_requested_sales_documents
  has_many :projects, through: :project_requested_sales_documents

  validates_presence_of :requested_sales_document_name
  validates_length_of :requested_sales_document_name, maximum: 50
end
