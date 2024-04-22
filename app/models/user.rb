class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  has_many :cloths, dependent: :destroy
  validates :username, presence: true
  validates :profile, length: { maximum: 200 }
  has_many :likes, dependent: :destroy
  has_many :liked_cloths, through: :likes, source: :cloth
  has_many :comments, dependent: :destroy

  def already_liked?(cloth)
    self.likes.exists?(cloth_id: cloth.id)
  end

  mount_uploader :image, ImageUploader
end
