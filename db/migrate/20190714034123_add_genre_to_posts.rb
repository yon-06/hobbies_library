class AddGenreToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :genre, :integer
  end
end