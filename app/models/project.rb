class Project < ActiveRecord::Base


  belongs_to :procurement_tool
  belongs_to :deal_type
  belongs_to :project_setting
  belongs_to :project_status
  belongs_to :sales_person
  belongs_to :irrigation_responsibility
  has_many :requested_sales_documents, through: :project_requested_sales_documents
  has_many :contacts, through: :project_contacts
  has_many :project_site_informations
  has_many :project_sites, through: :project_site_informations
end
