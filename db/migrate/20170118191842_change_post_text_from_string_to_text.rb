class ChangePostTextFromStringToText < ActiveRecord::Migration[5.0]
  def change
    change_column :posts, :text, :text
  end
end
