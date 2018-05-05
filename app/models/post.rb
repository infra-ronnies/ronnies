class Post < ApplicationRecord
	belongs_to :event

	has_many :post_images
	# accepts_nested_attributes_for :post_images
	# attachment :iamge
	accepts_attachments_for :post_images, attachment: :image

	has_many :post_comments
	has_many :post_images

end
