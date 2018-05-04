class Event < ApplicationRecord
	has_many :posts
	has_many :event_users
	attachment :image
	validates :event_password, presence: true, length: {minimum: 6}

end

