class Post < ApplicationRecord
  has_many :likes
  has_many :dislikes
  has_many :comments, as: :commentable
end
