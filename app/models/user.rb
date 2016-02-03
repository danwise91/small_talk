class User < ActiveRecord::Base
  has_secure_password
  has_many :user_tips
  has_many :tips, :through => :user_tips
  validates_uniqueness_of :email
  validates_presence_of :email
  validates_uniqueness_of :name
  validates_presence_of :name

  def self.from_omniauth(auth)
   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
end
