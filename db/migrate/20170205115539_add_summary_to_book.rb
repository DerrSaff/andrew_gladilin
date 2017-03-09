# frozen_string_literal: true
class AddSummaryToBook < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :summary, :text, default: ''
  end
end
