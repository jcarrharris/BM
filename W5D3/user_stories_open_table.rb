Models

restaurant 
user
restaurant_owner
reservation
reviews
menu
party_size
meal

table ?
seats ?

restaurants
has_many :reviews
has_many :reservations
has_many :tables/seats
belongs_to :restaurant_owner
has_many :diners, :through => reservations
has_many :menus
has_many :availabilities

diner
has_many :reviews
has_many :meal, :through => :reservations

review
belongs_to :diner
belongs_to :restaurant

restaurant_owner
has_many :restaurants

Callback -> 

Product

	
- create
	-before_create, -create, -during_create, -after_create
- validate
- save
- update 
- destroy













1. Restaurant - 30 seats (hard cap/ soft cap)
2. Reservations - 7pm - 26 (will they all show up?, how long will they be there?)
party size - 5 






as a hungry person
I want to find a restaurant.

As a diner 
I want to make a reservation.

As a diner 
I want to see the menu.

As a diner 
I want to state how many are in my party.

As a restaurant owner 
I want to know how many people are showing up at 7pm.

As a restuarant owner
I want to email deals to past diners.

As a restaurant owner 
I want to setup my restaurant on the site.

As a restaurant owner
I want to limit the set the number of seats that I have.

As the website owner
I want to see if my site is actually being used.

As a diner 
I want to see what restaurants have availability for my party size.

As a diner
I want to see restaurants that meet dietary requirements

As a diner 
I want to to order restaurants by cusine

As a diner 
I want to order restaurants by location.

As a diner
I want to leave reviews.

As a diner
I want to see the top reviewed restaurants.