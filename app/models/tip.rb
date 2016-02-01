class Tip < ActiveRecord::Base
  has_many :themes_tips
  has_many :themes, through: :themes_tips
end
