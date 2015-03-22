class RemoveProjectTypeInformationFromProjectSiteInformation < ActiveRecord::Migration
  def change
    remove_column :project_site_informations, :project_type_information_id, :integer
  end
end
