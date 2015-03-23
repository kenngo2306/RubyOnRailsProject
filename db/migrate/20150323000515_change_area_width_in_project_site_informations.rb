class ChangeAreaWidthInProjectSiteInformations < ActiveRecord::Migration
  def up
    change_column :project_site_informations, :area_width, :string
  end

  def down
    change_column :project_site_informations, :area_width, :decimal
  end
end
