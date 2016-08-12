class Cocktail < ApplicationRecord

  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: true, uniqueness: true

  has_attachments :photos, maximum: 2
  # mount_uploader :photo, PhotoUploader
end
