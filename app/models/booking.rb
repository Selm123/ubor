class Booking < ApplicationRecord
    belongs_to :customer, :optional =>true
    belongs_to :driver, :optional =>true

    geocoded_by :from_address
    after_validation :geocode
end
