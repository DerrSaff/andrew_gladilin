# frozen_string_literal: true
class DropTableTags < ActiveRecord::Migration[5.0]
  def change
    drop_table :tags
  end
end
