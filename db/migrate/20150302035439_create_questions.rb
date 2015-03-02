class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_name
      t.integer :project_type_id

      t.timestamps null: false
    end
  end
end
