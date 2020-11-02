class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :review_id
end
