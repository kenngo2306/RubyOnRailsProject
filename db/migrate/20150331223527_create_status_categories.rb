class CreateStatusCategories < ActiveRecord::Migration
  def change
    create_table :status_categories do |t|
      t.string :status_category_name

      t.timestamps null: false
    end
  end
end
