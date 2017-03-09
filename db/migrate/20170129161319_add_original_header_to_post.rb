# frozen_string_literal: true
class AddOriginalHeaderToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :original_header, :string, default: ''
  end
end
