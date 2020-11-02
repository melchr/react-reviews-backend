class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :review_id
end
