class AddProjectSiteInformationIdToProjectTypeInformation < ActiveRecord::Migration
  def change
    add_column :project_type_informations, :project_site_information_id, :integer
  end
end
