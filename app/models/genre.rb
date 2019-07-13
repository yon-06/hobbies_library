class Genre < ApplicationRecord

	has_many :posts

	belongs_to :user

	#親から子のモデルをいじるとき作成する
  accepts_nested_attributes_for :posts
end
