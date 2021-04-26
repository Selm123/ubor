Customer.destroy_all
c1 = Customer.create :email => 'customer1@gmail.com', :password => 'chicken'
c2 = Customer.create :email => 'customer2@gmail.com', :password => 'chicken'
c3 = Customer.create :email => 'customer3@gmail.com', :password => 'chicken'
c4 = Customer.create :email => 'customer4@gmail.com', :password => 'chicken'
puts "#{Customer.count} customers"

Driver.destroy_all
d1 = Driver.create :email => 'driver1@gmail.com', :password => 'chicken'
d2 = Driver.create :email => 'driver2@gmail.com', :password => 'chicken'
d3 = Driver.create :email => 'driver3@gmail.com', :password => 'chicken'
d4 = Driver.create :email => 'driver4@gmail.com', :password => 'chicken'
puts "#{Driver.count} drivers"

Booking.destroy_all
b1 = Booking.create :estimated_price => 15.45
b2 = Booking.create :estimated_price => 25.45
b3 = Booking.create :estimated_price => 35.45
b4 = Booking.create :estimated_price => 45.45
puts "#{Booking.count} bookings"


# Associations #########################################

puts "Customers and bookings"
c1.bookings << b1
c2.bookings << b2
c3.bookings << b3
c4.bookings << b4

puts "Drivers and bookings"
d1.bookings << b1
d2.bookings << b2
d3.bookings << b3
d4.bookings << b4
