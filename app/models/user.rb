class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :comments, dependent: :destroy
  has_many :tracks, dependent: :destroy

  mount_uploader :avatar, AvatarUploader

  def admin?
    self.role == 'admin'
  end
end
