class ChangeProjectBudgetInProjects < ActiveRecord::Migration
  def up
    change_column :projects, :project_budget, :string
  end

  def down
    change_column :projects, :project_budget, :decimal
  end
end
