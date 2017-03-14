# frozen_string_literal: true
class DropAllTables < ActiveRecord::Migration[5.0]
  def change
    drop_table :comments
    drop_table :likes
    drop_table :dislikes
    drop_table :posts
    drop_table :reports
    drop_table :users
  end
end
