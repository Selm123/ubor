# README

## It's Ubor, not Uber

[It's Ubor, not Uber](https://project1ubor.herokuapp.com/)

## Future iterations
* UTC time to Sydney time
* Change booking status
* Different booking authorisation for customers and drivers
* Home page toggle background photo 

* Add more comments
* Add default 'NSW Australia' to from and to address
* Modify the tables, remove unnecessary columns
* Add car model table, or get from external API, when inputing plate number of the car, its model would be identified and different estimated prices generated for each car type
* Booking should have 6 status:
new--confirmed--started--finished--paid--reviewed
* Driver should be able to change the status to "started" when customer enters the car, and change to "finished" after arriving
* Once a driver takes the job (booking is confirmed), the customer will be able to see the car moving on the map and be notified once the car is nearyby and has arrived.
* Replace all "customer" with "passenger"
* It's developed under 150% zoom, switch to 100% and adjust the size of elements
* Customer should be able to see the car's current address updated on map during the trip.
* Only customer could create new booking and cancel(delete, because we don't want unconfirmed booking in the db) booking. Only driver could view booking index. Only logged in users could view history booking(his own bookings) and change booking status.
* when dirver arrives and customer get into the car, the driver click start button to start gps and calculating fee. When the car arrives destination, the driver clicks finish button and customer pay by credit card automaticly. The customer could review the booking after booking finished.
* Driver couldn't change booking status to "finished" until the car's current location is very close to destination
* Customer could create and edit favourite addresses (create external table for that, one customer have many favourte addresses). Customer's registered home address will be the first one in favourite addresses.
* Driver could see the booking index from different customers (only show nearby ones).
* Customer and driver couldn't really delete the booking (except cancelling a new booking which has not been taken by any driver), their 'delete' in their booking histroy is just to hide the booking, not actual delete from db(because the other party would also be affected).
* Payment and credit card validation
* Driver also be able to rate customer
* Only customer/driver with valid payment detail could make booking and take booking
* Start calculating actual price after customer get on the car
* Credit card expiry date should be string with length of 4, not date
* If a person uses Ubor company email to login, he/she becomes admin automatically
* If the password input is wrong for 3 times, the account will be locked and the user need to contact admin to unlock
* If after 10 min there's still no driver taking the task, show "no driver around, try again later"
* Customer could book for future time e.g. tomorrow
* Identify customer's current location and make it as start location by default
* Customer could add multiple credit cards, could choose payment method when looking at estimated price
* For new sign up user, show them walkthrough/checklist (training/tips). When existing user logging in, they could see new feature notification
* Deleting account would not really delete from db, only change account to inactive
* Rename heroku repo


## User Flow (first draft before developing)

**Screen[1]: Home page**
***Usercase[1]***
* Do: click sign up
  result: 
  redirect to Screen[2]:Sign up choose page

***Usercase[2]***
* Do: click sign in
  result: 
  redirect to Screen[3]: Sign in choose page


**Screen[2]: Sign up choose page**
***Usercase[1-1]***
* Do: click sign up as customer
  result: 
  redirect to Screen[4]:Customer sign up page

***Usercase[1-2]***
* Do: click sign up as driver
  result: 
  redirect to Screen[5]:Driver sign up page


**Screen[3]: Sign in choose page**
***Usercase[2-1]***
* Do: click sign in as customer
  result: 
  redirect to Screen[6]:Customer sign in page

***Usercase[2-2]***
* Do: click sign in as driver
  result: 
  redirect to Screen[7]:Driver sign in page


**Screen[4]:Customer sign up page**
***Usercase[1-1-only]***
* Do: input email and password to create account
  result: 
  redirect to Screen[8]:Customer profile input page


**Screen[5]:Driver sign up page**
***Usercase[1-2-only]***
* Do: input email and password to create account
  result: 
  redirect to Screen[9]:Driver profile input page


**Screen[6]:Customer sign in page**
***Usercase[2-1-only]***
* Do: input email and password to sign in as customer
  result: 
  redirect to Screen[10]:Customer home page


**Screen[7]:Driver sign in page**
***Usercase[2-2-only]***
* Do: input email and password to sign in as driver
  result: 
  redirect to Screen[11]:Driver home page


**Screen[8]:Customer profile input page**
***Usercase[1-1-only-1]***
* Do: input customer profile
  result: 
  redirect to Screen[10]:Customer home page

***Usercase[1-1-only-2]***
* Do: click skip
  result: 
  redirect to Screen[10]:Customer home page


**Screen[9]:Driver profile input page**
***Usercase[1-2-only-1]***
* Do: input customer profile
  result: 
  redirect to Screen[11]:Driver home page

***Usercase[1-2-only-2]***
* Do: click skip
  result: 
  redirect to Screen[11]:Driver home page


**Screen[10]:Customer home page**
***Usercase[1-1-only-1,1-1-only-2,2-1-only]***
* Do: Enter start address, destination address
  result: 
  1. View estimated prices for different car types
  2. Choose car type and submit request
  3. Before any driver takes the task, show on page: "waiting for driver"
  4. After a driver takes the task, the booking is confirmed and
  redirect to Screen[12]:Map page


**Screen[11]:Driver home page**
***Usercase[1-2-only-1,1-2-only-2,2-2-only]***
* Do: View and choose nearby requests
  result: 
  1. View estimated prices for different car types
  2. After taking the task, the booking is confirmed and
  redirect to Screen[12]:Map page 


**Screen[12]:Map page**