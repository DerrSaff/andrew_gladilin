# frozen_string_literal: true
class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name, default: ''
      t.integer :pages_read, default: 0
      t.integer :total_pages, default: 0
      t.boolean :read, default: false
      t.string :picture, default: ''
      t.string :link, default: ''
      t.text :review, default: ''
      t.timestamps
    end
  end
end
