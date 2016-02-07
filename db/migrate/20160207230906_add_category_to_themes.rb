class AddCategoryToThemes < ActiveRecord::Migration
  def change
    add_column :themes, :category, :string
  end
end
