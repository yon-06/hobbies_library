class Comment < ApplicationRecord

	belongs_to :psot
	belongs_to :user
end
