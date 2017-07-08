class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  has_many :project_images
  has_many :tags
end
