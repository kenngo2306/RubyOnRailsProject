class ChangeAreaLengthInProjectSiteInformations < ActiveRecord::Migration
  def up
    change_column :project_site_informations, :area_length, :string
  end

  def down
    change_column :project_site_informations, :area_length, :decimal
  end
end
