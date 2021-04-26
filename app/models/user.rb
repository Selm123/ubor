class User < ApplicationRecord
    geocoded_by :ip_address,
    :latitude => :lat, :longitude => :lon
    after_validation :geocode
end