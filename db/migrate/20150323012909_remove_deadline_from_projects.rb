class RemoveDeadlineFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :deadline, :date
  end
end
