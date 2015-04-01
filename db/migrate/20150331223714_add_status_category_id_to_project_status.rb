class AddStatusCategoryIdToProjectStatus < ActiveRecord::Migration
  def change
    add_column :project_statuses, :status_category_id, :integer
  end
end
