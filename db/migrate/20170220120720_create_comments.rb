# frozen_string_literal: true
class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.text :message, default: ''
      t.integer :answer # this field contains id of the comment being responded
      t.integer :commentable_id
      t.integer :commentable_type
      t.timestamps
    end

    add_index :comments, [:commentable_type, :commentable_id]
  end
end
