class Project < ActiveRecord::Base


  belongs_to :procurement_tool
  belongs_to :deal_type
  belongs_to :project_setting
  belongs_to :project_status
  belongs_to :sales_person
  belongs_to :irrigation_responsibility
  has_many :project_requested_sales_documents
  has_many :requested_sales_documents, through: :project_requested_sales_documents
  has_many :project_contacts
  has_many :contacts, through: :project_contacts
  has_many :project_site_informations
  has_many :project_sites, through: :project_site_informations

  accepts_nested_attributes_for :project_site_informations
  accepts_nested_attributes_for :project_sites

  validates_presence_of :project_name, :deal_type_id, :project_setting_id, :procurement_tool_id, :sales_person_id, :project_status_id, :irrigation_responsibility_id
  validates_length_of :project_budget, maximum: 20
  validates_length_of :procurement_tool_description, :deal_type_description, maximum: 150
end

