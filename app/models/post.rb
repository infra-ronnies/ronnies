class Post < ApplicationRecord
	belongs_to :event
	has_many :post_comments
	has_many :post_images
end
