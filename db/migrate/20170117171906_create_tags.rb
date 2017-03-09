# frozen_string_literal: true
class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.string :tag
      t.belongs_to :post, index: true
      t.timestamps
    end
  end
end
