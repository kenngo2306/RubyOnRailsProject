class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :category_name
      t.integer :project_type_id

      t.timestamps null: false
    end
  end
end
