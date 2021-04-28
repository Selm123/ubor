class Booking < ApplicationRecord
    belongs_to :customer, :optional =>true
    belongs_to :driver, :optional =>true

    geocoded_by :from_address
    # geocoded_by :to_address, :to_latitude => :latitude, :to_longitude => :longitude
    # geocoded_by :from_address, :from_latitude => :latitude, :from_longitude => :longitude
    # geocoded_by :to_address, :to_latitude => :latitude, :to_longitude => :longitude

    after_validation :geocode
end
