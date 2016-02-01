class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :url
      t.string :description
      t.timestamps null: false
    end
  end
end
