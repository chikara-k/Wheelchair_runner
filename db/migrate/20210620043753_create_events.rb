class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :user_id, null: false
      t.string :title, null: false
      t.datetime :begin_time, null: false
      t.datetime :finish_time, null: false
      t.string :place
      t.text :memo
      t.integer :genre
      t.string :image_id

      t.timestamps
    end
  end
end
