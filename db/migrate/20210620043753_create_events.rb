class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.datetime :date, null: false
      t.datetime :begin_time, null: false
      t.datetime :finish_time, null: false
      t.string :place, null: false
      t.text :memo
      t.integer :genre, null: false
      t.string :image_id

      t.timestamps
    end
  end
end
