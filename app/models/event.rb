class Event < ApplicationRecord
	has_many :posts

	accepts_nested_attributes_for :posts, allow_destroy: true

	has_many :event_users
	attachment :image
	validates :event_password, presence: true, length: {minimum: 6}


end

