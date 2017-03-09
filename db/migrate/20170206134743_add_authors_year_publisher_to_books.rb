# frozen_string_literal: true
class AddAuthorsYearPublisherToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :author, :string, default: ''
    add_column :books, :year, :string, default: ''
    add_column :books, :publisher, :string, default: ''
  end
end
