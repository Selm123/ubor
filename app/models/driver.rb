class Driver < ApplicationRecord
    has_many :bookings
    has_secure_password
    validates :email, :presence => true, :uniqueness => true
end
