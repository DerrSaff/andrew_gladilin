class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.text :message, default: ''
      t.integer :user_id, default: 0
      t.string :email, default: ''
      t.string :name, default: ''

      t.timestamps
    end
  end
end
