class CreateCategoryOptionSelections < ActiveRecord::Migration
  def change
    create_table :category_option_selections do |t|
      t.string :category_option_selection_name
      t.integer :category_option_id
      t.integer :project_type_information_id

      t.timestamps null: false
    end
  end
end
