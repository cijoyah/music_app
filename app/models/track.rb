class Track < ActiveRecord::Base

  mount_uploader :art_work, ArtWorkUploader
  mount_uploader :music, MusicUploader

  validates :title, presence: true
  validates :music, presence: true

  belongs_to :user, dependent: :destroy
  has_many :comments, dependent: :destroy

end
