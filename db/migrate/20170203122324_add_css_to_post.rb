# frozen_string_literal: true
class AddCssToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :css, :text, default: ''
  end
end
