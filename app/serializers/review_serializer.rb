class ReviewSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :genre, :img_url, :comments
end
