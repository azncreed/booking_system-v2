class Timeslot < ApplicationRecord
	has_many :bookings
	has_many :advisors
	belongs_to :user
end
