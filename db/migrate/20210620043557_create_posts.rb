class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id, null: false
      t.string :name, null: false
      t.text :image_id
      t.text :introduction, null: false
      t.boolean :toilet
      t.integer :recommend_level
      t.integer :road_level
      t.integer :parking
      t.boolean :rental_bicycle
      t.text :address

      t.timestamps
    end
  end
end
