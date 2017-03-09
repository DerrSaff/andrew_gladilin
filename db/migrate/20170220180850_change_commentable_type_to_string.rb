# frozen_string_literal: true
class ChangeCommentableTypeToString < ActiveRecord::Migration[5.0]
  def change
    change_column :comments, :commentable_type, :string
  end
end
