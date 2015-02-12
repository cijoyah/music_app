class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :comments
  has_many :tracks

  mount_uploader :avatar, AvatarUploader

  def admin?
    self.role == 'admin'
  end
end
