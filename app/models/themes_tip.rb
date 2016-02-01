class ThemesTip < ActiveRecord::Base
  belongs_to :theme
  belongs_to :tip
end
