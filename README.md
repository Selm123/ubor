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
* Do: Enter start address, destination address, select 
  result: 
  redirect to Screen[11]:Driver home page


**Screen[11]:Driver home page**
***Usercase[1-2-only-1,1-2-only-2,2-2-only]***




### Usercase[1-2] sign up as driver
2. new driver sign up
3. new customer create booking, input start location and destination and choose car model, and estimated_price would be generated
4. system generate estimated price 


## Must TO DOs
1. logged in customer be able to see all his history bookings

2. logged in driver be able to see the available bookings from all customers near his current location

3. logged in driver be able to choose one current booking and change its status

4. only customer/driver with valid payment detail could make booking and take booking

5. style it to make it look like mai's site

6. in sign up, check for duplicate email (already done?)

7. Finish Customer whole user flow, driver is optional

8. start calculating after customer get on the car

9. 

## Optional TO DOs
1. same email could both be driver and customer (test whether now works)

2. bootstrap for responsive

3. use company email to login, become admin automatically

4. password wrong 3 times and lock the account, contact admin to unlock

5. Book for future time e.g. tomorrow

6. 
