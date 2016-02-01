class CreateThemesTips < ActiveRecord::Migration
  def change
    create_table :themes_tips do |t|
      t.belongs_to :theme, index: true, foreign_key: true
      t.belongs_to :tip, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
