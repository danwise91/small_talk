class CreateRedditScraperUrlTable < ActiveRecord::Migration
  def change
    create_table :subreddits do |t|
    	t.string :url
    	t.references :theme, index: true
    end
  end
end
