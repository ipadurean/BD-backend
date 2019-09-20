# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
FlatRate.create({route: 'O\'hare - Downtown', duration: 1})
FlatRate.create({route: 'O\'hare - South Loop', duration: 1.25})
FlatRate.create({route: 'O\'hare - Chicago North', duration: 1})
FlatRate.create({route: 'O\'hare - Chicago West', duration: 0.75})
FlatRate.create({route: 'O\'hare - Evanston', duration: 1})
FlatRate.create({route: 'O\'hare - Skokie', duration: 0.75})
FlatRate.create({route: 'O\'hare - Chicago NW', duration: 0.75})
FlatRate.create({route: 'O\'hare - Wilmette', duration: 1})
FlatRate.create({route: 'O\'hare - Winetka', duration: 1})
FlatRate.create({route: 'O\'hare - Northbrook', duration: 1})
FlatRate.create({route: 'O\'hare - Deerfield', duration: 1.25})
FlatRate.create({route: 'O\'hare - Barrington', duration: 1.25})
FlatRate.create({route: 'O\'hare - Naperville', duration: 1.25})
FlatRate.create({route: 'O\'hare - Oak Park', duration: 1.25})
User.create({name: 'Ciprian Padurean', username: 'ipadurean', password: 'pass', phone_number: '773-294-8839'})
Driver.create({name: 'John Smith', username: 'jsmith', password: 'pass', phone_number: '773-320-3232', photo: '/Users/ipadurean79/Desktop/Flatiron/Projects/BookADriver/driver.png', description: 'text', rate:100, car: 'Mercedes-Maybach ', car_photo: '/Users/ipadurean79/Desktop/Flatiron/Projects/BookADriver/car.jpg', rating:5, off_duty: '0'})