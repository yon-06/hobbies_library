class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.text :post_image_id
      t.string :title
      t.string :appeal
      t.integer :recommend
      t.integer :cost
      t.integer :first_cost
      t.text :charm
      t.timestamps
    end
  end
end
