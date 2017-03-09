# frozen_string_literal: true
class SetDefaultAnswerForComment < ActiveRecord::Migration[5.0]
  def change
    change_column_default :comments, :answer, 0
  end
end
