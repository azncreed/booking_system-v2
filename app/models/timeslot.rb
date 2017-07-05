class Timeslot < ApplicationRecord
	has_many :bookings
	has_many :advisors
end
