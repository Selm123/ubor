Customer.destroy_all
c1 = Customer.create :first_name => "customer1_fn", :last_name => "customer1_ln", :street => "1 George St", :suburb => "Sydney", :postcode => "2000", :state => "NSW", :email => 'customer1@gmail.com', :password => 'chicken', :phone => '0405000001', :credit_card_no => '4557000000000001', :credit_card_expiry_date=> '2022-01-01', :cvv => '200', :admin => true

c2 = Customer.create :first_name => "customer2_fn", :last_name => "customer2_ln", :street => "2 George St", :suburb => "Sydney", :postcode => "2000", :state => "NSW", :email => 'customer2@gmail.com', :password => 'chicken', :phone => '0405000002', :credit_card_no => '4557000000000002', :credit_card_expiry_date=> '2022-01-01', :cvv => '200', :admin => false

c3 = Customer.create :first_name => "customer3_fn", :last_name => "customer3_ln", :street => "3 George St", :suburb => "Sydney", :postcode => "2000", :state => "NSW", :email => 'customer3@gmail.com', :password => 'chicken', :phone => '0405000003', :credit_card_no => '4557000000000003', :credit_card_expiry_date=> '2022-01-01', :cvv => '200', :admin => false

c4 = Customer.create :first_name => "customer4_fn", :last_name => "customer4_ln", :street => "4 George St", :suburb => "Sydney", :postcode => "2000", :state => "NSW", :email => 'customer4@gmail.com', :password => 'chicken', :phone => '0405000004', :credit_card_no => '4557000000000004', :credit_card_expiry_date=> '2022-01-01', :cvv => '200', :admin => false
puts "#{Customer.count} customers"

Driver.destroy_all
d1 = Driver.create :first_name => "driver1_fn", :last_name => "driver1_ln", :street => "1 Church St", :suburb => "Parramatta", :postcode => "2150", :state => "NSW", :email => 'driver1@gmail.com', :password => 'chicken', :phone => '0405000005', :bank_bsb_no => '123456', :bank_account_no => '123456789', :car_model_id => 1, :driver_license_no => "12345678"

d2 = Driver.create :first_name => "driver2_fn", :last_name => "driver2_ln", :street => "2 Church St", :suburb => "Parramatta", :postcode => "2150", :state => "NSW", :email => 'driver2@gmail.com', :password => 'chicken', :phone => '0405000006', :bank_bsb_no => '223456', :bank_account_no => '223456789', :car_model_id => 2, :driver_license_no => "22345678"

d3 = Driver.create :first_name => "driver3_fn", :last_name => "driver3_ln", :street => "3 Church St", :suburb => "Parramatta", :postcode => "2150", :state => "NSW", :email => 'driver3@gmail.com', :password => 'chicken', :phone => '0405000007', :bank_bsb_no => '323456', :bank_account_no => '323456789', :car_model_id => 3, :driver_license_no => "32345678"

d4 = Driver.create :first_name => "driver4_fn", :last_name => "driver4_ln", :street => "4 Church St", :suburb => "Parramatta", :postcode => "2150", :state => "NSW", :email => 'driver4@gmail.com', :password => 'chicken', :phone => '0405000008', :bank_bsb_no => '423456', :bank_account_no => '423456789', :car_model_id => 4, :driver_license_no => "42345678"
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
