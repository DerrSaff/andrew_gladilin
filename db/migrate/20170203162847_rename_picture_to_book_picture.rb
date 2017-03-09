# frozen_string_literal: true
class RenamePictureToBookPicture < ActiveRecord::Migration[5.0]
  def change
    change_table :books do |t|
      t.rename :picture, :book_picture
    end
  end
end
