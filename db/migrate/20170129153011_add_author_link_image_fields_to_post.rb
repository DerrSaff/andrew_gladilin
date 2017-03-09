# frozen_string_literal: true
class AddAuthorLinkImageFieldsToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :author, :string, default: ''
    add_column :posts, :link, :string, default: ''
  end
end
