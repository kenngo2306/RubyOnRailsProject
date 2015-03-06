class Project < ActiveRecord::Base

  belongs_to :procurement_tool
  belongs_to :deal_type
  belongs_to :project_setting
  belongs_to :project_status
  belongs_to :sales_person
  belongs_to :irrigation_responsibility
  has_many :requested_sales_documents, through: :requested_sales_documents
  has_many :project_site_information
  has_many :contacts, through: :project_contacts
  has_many :sites, through: :project_site_informations
end
