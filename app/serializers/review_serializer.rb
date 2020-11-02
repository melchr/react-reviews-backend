class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content, :genre, :img_url, :comments
end
