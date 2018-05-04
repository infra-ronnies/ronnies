class PostImage < ApplicationRecord
	belongs_to :post
	attachment :image
	# mount_uploader :image, ImageUploader
end
