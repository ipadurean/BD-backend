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
Driver.create({name: 'John Smith', username: 'John', password: 'pass', phone_number: '773-320-3232', photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/driver.jpeg', description: 'text', rate:100, car: 'Mercedes-Maybach ', car_photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/car.png', rating:5, off_duty: '0'})
Driver.create({name: 'Craig Accardi', username: 'Craig', password: 'pass', phone_number: '312-323-3842', photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/driver1.jpeg', description: 'text', rate:140, car: 'Bentley Continental', car_photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/car3.jpg', rating:5, off_duty: '0'})
Driver.create({name: 'Greg Wilson', username: 'Greg', password: 'pass', phone_number: '773-890-5243', photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/driver2.jpeg', description: 'text', rate:100, car: 'Mercedes Benz 550', car_photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/car2.jpg', rating:5, off_duty: '0'})
Driver.create({name: 'Matt Brown', username: 'Matt', password: 'pass', phone_number: '773-320-3232', photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/driver3.jpeg', description: 'text', rate:175, car: 'Lincoln Continental', car_photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/limo.jpg', rating:5, off_duty: '0'})
Driver.create({name: 'Julia Jones', username: 'Julia', password: 'pass', phone_number: '312-888-1234', photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/image.jpeg', description: 'text', rate:85, car: 'Lincoln Continental', car_photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/car1.jpg', rating:5, off_duty: '0'})