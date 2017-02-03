class Book < ApplicationRecord
  mount_uploader :book_picture, BookUploader
end
