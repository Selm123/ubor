# README


## User Flow and Wireframes

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
* Do: when dirver arrives and customer get into the car, the driver click start button to start gps and calculating fee. When the car arrives destination, the driver clicks finish button and customer pay by credit card automaticly. The customer could review the booking after booking finished.


## Core
Customer:
4. Customer could only see his own booking index (not others! need fix)
5. Customer could create and edit favourite address (external table)

Driver:
2. Driver could see the booking index from different customers (only show nearby ones). Driver could not create booking
3. Ignore the car model now, price is only estimated based on the distance. Also ignore the map showing car moving, only show map is fine after booking confirmed
4. Driver could take booking(change to confirmed), start trip (booking started), end trip (booking finished)


Booking:
1. booking has 6 status:new--confirmed--started--finished--paid--reviewed
2. 

* Booking could update could not edit
* Booking could be cancelled (deleted because we don't want unconfirmed booking in the db), customer and driver couldn't really delete the booking (because the other party would also be affected), their 'delete' in their booking histroy is just to hide them
* When booking is created, the default status is 'new'. After a driver takes it, status:"confirmed". After the customer enters the car and driver presses start button, status:"started". After arriving on destination in gps, driver could press finish button (if still far from it then driver couldn't)

## Schedule
Wednesday: geocoder and related stuff (estimated price, car moving, trip start and end)
Thursday: styling and wrap up





## Must TO DOs

1. logged in customer be able to see all his history bookings

2. logged in driver be able to see the available bookings from all customers near his current location

3. logged in driver be able to choose one current booking and change its status

4. only customer/driver with valid payment detail could make booking and take booking

5. style it to make it look like mai's site

6. in sign up, check for duplicate email (already done?)

7. Finish Customer whole user flow, driver is optional

8. start calculating after customer get on the car

9. credit card expiry date should be string with length of 4

10. change customer to passenger

11. allow driver choose car type

## Optional TO DOs
1. same email could both be driver and customer (test whether now works)

2. bootstrap for responsive

3. use company email to login, become admin automatically

4. password wrong 3 times and lock the account, contact admin to unlock

5. Book for future time e.g. tomorrow

6. If after 10 min no driver take the task, show "no driver around, try again later"

7. add "favourite addresses" as a list for customer. Add registered home address as top one of favourite address.

8. make start address by default as local address

9. coudl add multiple credit cards, could choose payment method when looking at estimated price

10. For new sign up user, show them walkthrough/checklist (training/tips)

11. For existing user logging in, they could see new feature notification

12. delete account only change account to inactive, would not really delete

13. driver also be able to rate customer

14. credit card validation