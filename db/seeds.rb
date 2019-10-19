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
User.create({name: 'guest', username: 'Guest', password: 'pass', phone_number: '773-294-8839'})
Driver.create({name: 'John Smith', username: 'John', phone_number: '773-320-3232', photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/driver.jpeg', description: 'Ultra luxury. Cras tristique ipsum et nisi maximus, eget tempus odio aliquam. Proin scelerisque maximus risus vel tempor.', rate:100, car: 'Mercedes-Maybach ', car_photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/car.png', rating:4.53, off_duty: '0'})
Driver.create({name: 'Craig Accardi', username: 'Craig', phone_number: '312-323-3842', photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/driver1.jpeg', description: 'Ultra luxurious vehicle. Ut egestas fringilla viverra. Sed quis pretium mi. Nullam vel nisl semper, consequat lacus a, maximus est. Fusce blandit vel felis vel rhoncus. Sed blandit quam ac maximus semper. Integer ornare orci non elit auctor malesuada', rate:140, car: 'Bentley Continental', car_photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/car3.jpg', rating:4.23, off_duty: '0'})
Driver.create({name: 'Greg Wilson', username: 'Greg', phone_number: '773-890-5243', photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/driver2.jpeg', description: 'Best service in town! Vivamus euismod, lorem vitae tristique finibus, enim odio auctor erat, a scelerisque ex tellus vel augue. Vestibulum scelerisque sem aliquam posuere feugiat.', rate:100, car: 'Mercedes Benz 550', car_photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/car2.jpg', rating:4.11, off_duty: '0'})
Driver.create({name: 'Matt Brown', username: 'Matt', phone_number: '773-320-3232', photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/driver3.jpeg', description: 'Reliability is my goal! Morbi eleifend lectus quis augue volutpat, a efficitur turpis ultricies. Nunc at sapien id dui tempor porta. Etiam fringilla orci massa, vitae hendrerit nunc pharetra sit amet.', rate:175, car: 'Lincoln Continental', car_photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/limo.jpg', rating:4.65, off_duty: '0'})
Driver.create({name: 'Julia Jones', username: 'Julia', phone_number: '312-888-1234', photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/image.jpeg', description: 'Respectful driver, always on time. Duis libero arcu, rhoncus volutpat mattis eu, porta vel elit. Nullam auctor neque quis ipsum finibus, ac egestas dui ultricies. Aenean dolor augue, venenatis quis mauris sit amet, placerat ultricies felis', rate:85, car: 'Lincoln Continental', car_photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/car1.jpg', rating:4.56, off_duty: '0'})
Driver.create({name: 'David Martinez', username: 'David', phone_number: '312-883-4732', photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/dr10.jpeg', description: 'Top service. Donec auctor lobortis magna id dictum. Proin eleifend interdum rutrum.', rate:125, car: 'Chrysler', car_photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/chrysler.jpg', rating:4.78, off_duty: '0'})
Driver.create({name: 'Adrian P', username: 'Adrian', phone_number: '312-883-4732', photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/dr13.jpeg', description: 'Quisque vitae aliquam sem. Etiam tellus metus, facilisis molestie tempor ac, mollis a quam. Nam tortor dui, feugiat id rhoncus vitae, laoreet vitae orci.', rate:105, car: 'Chevrolet Suburban', car_photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/suburban.jpg', rating:4.35, off_duty: '0'})
Driver.create({name: 'Carla G', username: 'Carla', phone_number: '312-883-4732', photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/dr12.jpeg', description: 'Best service! Vestibulum sed maximus velit, nec vulputate est. Sed id auctor sapien, ut scelerisque metus. Aenean gravida in purus quis eleifend. Suspendisse tincidunt vehicula ipsum, vitae pretium augue pharetra blandit.', rate:90, car: 'GMC Yukon', car_photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/yukon.jpg', rating:4.21, off_duty: '0'})
Driver.create({name: 'Yang Li', username: 'Yang', phone_number: '312-883-4732', photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/dr11.jpeg', description: 'High quality vehicle. Suspendisse tincidunt vulputate nibh vitae commodo. Praesent aliquet nunc sit amet ante tristique vulputate. Integer pellentesque suscipit est, ut tempus augue tempus in.', rate:125, car: 'Cadillac Escalade', car_photo: 'https://bookadriver.s3.us-east-2.amazonaws.com/escalade.jpg', rating:4.70, off_duty: '0'})
