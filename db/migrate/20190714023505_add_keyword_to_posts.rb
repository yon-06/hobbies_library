class AddKeywordToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :keyword, :string
  end
end
