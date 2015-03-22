class RemoveProjectIdFromProjectTypeInformation < ActiveRecord::Migration
  def change
    remove_column :project_type_informations, :project_id, :integer
  end
end
