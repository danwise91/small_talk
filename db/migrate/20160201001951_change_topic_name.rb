class ChangeTopicName < ActiveRecord::Migration

  def change
    rename_table :topics, :themes
  end

end
