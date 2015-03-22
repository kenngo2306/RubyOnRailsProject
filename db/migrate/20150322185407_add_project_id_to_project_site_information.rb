class AddProjectIdToProjectSiteInformation < ActiveRecord::Migration
  def change
    add_column :project_site_informations, :project_id, :integer
  end
end
