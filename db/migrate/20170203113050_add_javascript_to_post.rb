class AddJavascriptToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :javascript, :text, default: ''
  end
end
