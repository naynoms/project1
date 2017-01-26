# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

u1= User.create :first_name => 'Nay', :second_name => 'Noms', :email => 'naynoms@ga.co', :password => 'chicken', :password_confirmation => 'chicken', :admin => 'true'

u2 = User.create :first_name => 'Donkey', :second_name => 'Bruce', :email => 'bigD@tlg.com.au', :password => 'chicken', :password_confirmation => 'chicken', :admin => 'false'

u3 = User.create  :first_name => 'Pam', :second_name => 'Pam', :email => 'pampam@ga.co', :password => 'chicken', :password_confirmation => 'chicken', :admin => 'false'

Board.destroy_all
b1 = Board.create :title => 'Euro Summer 2017'
b2 = Board.create :title => 'Thailand'
b3 = Board.create :title => 'Tasmania'

Place.destroy_all
p1 = Place.create :name => 'Paris', :country => 'France'
p2 = Place.create :name => 'Blue Lagoon', :country => 'Iceland'
p3 = Place.create :name => 'Bangkok', :country => 'Thailand'
p4 = Place.create :name => 'Budapest', :country => 'Hungary'
p5 = Place.create :name => 'Phuket', :country => 'Thailand'
p6 = Place.create :name => 'Hobart', :country => 'Australia'
p7 = Place.create :name => 'Wineglass Bay', :country => 'Australia'

Upload.destroy_all

i1 = Upload.create  :image => 'http://www.fillmurray.com/200/200', :information => 'Paris, the city of love!'
i2 = Upload.create  :image => 'http://www.fillmurray.com/200/201', :information => 'Geothermal Springs'
i3 = Upload.create  :image => 'http://www.fillmurray.com/200/205', :information => 'Fun party'
i4 = Upload.create  :image => 'http://www.fillmurray.com/200/209', :information => 'Beaches'
i5 = Upload.create  :image => 'http://www.fillmurray.com/201/200', :information => 'DO NOT put your head under in the thermal baths!!'
i6 = Upload.create  :image => 'http://www.fillmurray.com/205/201', :information => 'Must do MONA'
i7 = Upload.create  :image => 'http://www.fillmurray.com/209/201', :information => 'Ahh the serenity!'


#ASSOCIATIONS!
u1.boards << b1 
u2.boards << b2
u3.boards << b3

b1.places << p1 << p2 << p4
b2.places << p3 << p5
b3.places << p6 << p7

b1.uploads << i1 << i2 << i5
b2.uploads << i3 << i4
b3.uploads << i6 << i7
