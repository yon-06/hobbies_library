class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.integer :motion
      t.integer :life
      t.integer :outdoor
      t.string :art
      t.integer :craft
      t.integer :study
      t.integer :culture
      t.integer :other
      t.integer :user_id
      t.integer :post_id
      t.timestamps
    end
  end
end
