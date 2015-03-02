class CreateProjectTypeInformations < ActiveRecord::Migration
  def change
    create_table :project_type_informations do |t|
      t.string :proposal_number
      t.string :revision_number
      t.integer :project_id
      t.integer :project_type_id

      t.timestamps null: false
    end
  end
end
