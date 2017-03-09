# frozen_string_literal: true
class AddViewsToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :views, :integer, default: 0
  end
end
