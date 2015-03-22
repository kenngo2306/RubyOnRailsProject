class AddProjectSiteIdToProjectSiteInformation < ActiveRecord::Migration
  def change
    add_column :project_site_informations, :project_site_id, :integer
  end
end
