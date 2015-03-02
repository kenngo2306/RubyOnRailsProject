class CreateCategoryOptions < ActiveRecord::Migration
  def change
    create_table :category_options do |t|
      t.string :category_option_name
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
