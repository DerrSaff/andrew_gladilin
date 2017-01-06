class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :header, default: '', null: false
      t.string :text, default: '', null: false
      t.timestamps
    end
  end
end
