class User < ApplicationRecord
	has_many :post_comments
	has_many :event_users
	validates :name, presence: true, uniqueness: true
	validates :password, {presence: true}
end
