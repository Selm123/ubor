class Customer < ApplicationRecord
    has_many :bookings
    has_secure_password
    validates :email, :presence => true, :uniqueness => true

    # geocoded_by :address
    # after_validation :geocode, :if => lambda{ |obj| obj.address_changed? }

    # def address
    #     [street,]
    # end
end
