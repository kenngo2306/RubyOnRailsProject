class AddBuildingCodeToProjectTypeInformation < ActiveRecord::Migration
  def change
    add_column :project_type_informations, :building_code, :string
  end
end
