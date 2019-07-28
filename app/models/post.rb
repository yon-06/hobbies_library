class Post < ApplicationRecord

	belongs_to :user

	has_many :comments, dependent: :destroy
	has_many :favorites, dependent: :destroy

	attachment :post_image

	validates :title, presence: true, length: { maximum: 15 }
	validates :recommend, presence: true, format: { with: /\A[0-9]+\Z/ }
	validates :appeal, presence: true, length: { maximum: 35 }
	validates :cost, presence: true, format: { with: /\A[0-9]+\Z/ }
	validates :charm, presence: true, length: { maximum: 200 }
	validates :keyword, presence: true, length: { maximum: 15 }
	validates :genre, presence: true

	def favorited_by?(user)
    	favorites.where(user_id: user.id).exists?
    end
end
