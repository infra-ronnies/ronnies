class User < ApplicationRecord
	has_many :post_comments
	has_many :event_users
end
