class Event < ApplicationRecord
	has_many :posts
	has_many :event_users

	validates :event_password, presence: true, length: {minimum: 6}
end

