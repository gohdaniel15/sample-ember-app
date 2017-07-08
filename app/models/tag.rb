class Tag < ApplicationRecord

  has_many :taggings
  has_many :projects, through: :taggings

  validates :name, presence: true

end
