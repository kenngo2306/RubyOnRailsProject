class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :answer_text
      t.integer :question_id
      t.integer :project_type_information_id

      t.timestamps null: false
    end
  end
end
