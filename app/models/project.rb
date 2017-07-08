class Project < ApplicationRecord

  has_many :project_images, dependent: :destroy
  has_many :taggings
  has_many :tags, through: :taggings

  validates :title, presence: true
  validates :description, presence: true

  accepts_nested_attributes_for :project_images

end
