class CreateUserTips < ActiveRecord::Migration
  def change
    create_table :user_tips do |t|
      t.integer :user_id
      t.integer :tip_id
    end
  end
end
