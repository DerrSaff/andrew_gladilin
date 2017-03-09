# frozen_string_literal: true
class AddTagsToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :tags, :string, default: ''
  end
end
