class Post < ApplicationRecord
  has_many :tags
  has_many :likes
end
