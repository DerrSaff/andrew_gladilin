class RemoveReadFromBook < ActiveRecord::Migration[5.0]
  def change
    remove_column :books, :read, :boolean
  end
end
