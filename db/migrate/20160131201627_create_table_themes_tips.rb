class CreateTableThemesTips < ActiveRecord::Migration
  def change
    create_table :table_themes_tips do |t|
      t.belongs_to :tip, index: true, foreign_key: true
      t.belongs_to :theme, index: true, foreign_key: true
    end
  end
end
