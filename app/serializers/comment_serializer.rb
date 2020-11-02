class CommentSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :review_id
end
