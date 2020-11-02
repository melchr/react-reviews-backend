class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :genre, :img_url
end
