class Book < ApplicationRecord
  mount_uploader :book_picture, BookUploader
  has_many :comments, as: :commentable
end
