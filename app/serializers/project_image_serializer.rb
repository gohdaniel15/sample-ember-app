class ProjectImageSerializer < ActiveModel::Serializer
  attributes :id, :filepicker_url
  belongs_to :project
end
