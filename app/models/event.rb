class Event < ApplicationRecord
	has_many :posts
	has_many :event_users
end

