class AddProposalDeadlineToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :proposal_deadline, :date
  end
end
