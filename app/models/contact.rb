class Contact < ActiveRecord::Base
  include ActiveModel::Validations
  attr_accessor :name, :phone
  validates_presence_of :phone
  validates_plausible_phone :phone, country_code: 'US'
end
