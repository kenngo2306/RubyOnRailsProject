class RemoveCategoryOptionSelectionNameFromCategoryOptionSelection < ActiveRecord::Migration
  def change
    remove_column :category_option_selections, :category_option_selection_name, :string
  end
end
