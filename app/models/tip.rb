class Tip < ActiveRecord::Base
  has_many :themes_tips
  has_many :tips, through: :themes_tips
end
