class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :description
      t.string :url

      t.timestamps null: false
    end
  end
end
