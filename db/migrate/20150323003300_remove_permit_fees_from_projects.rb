class RemovePermitFeesFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :permit_fees, :decimal
  end
end
