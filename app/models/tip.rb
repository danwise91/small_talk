class Tip < ActiveRecord::Base
  has_many :themes_tips
  has_many :themes, through: :themes_tips
  has_many :user_tips
  has_many :users, :through => :user_tips
end
