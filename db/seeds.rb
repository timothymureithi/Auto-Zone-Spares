# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#users
user1 = User.create(first_name: 'Timothy', last_name: 'Mureithi', email: 'tim@autozone.com', password: 'asdfg', password_confirmation: 'asdfg', isAdmin: true)
user2 = User.create(first_name: 'Judy', last_name: 'Mureithi', email: 'judy@autozone.com', password: 'zxcvb', password_confirmation: 'zxcvb', isAdmin: false)

#products
p1 = Product.create(name: 'Vance & Hines VO2 Insight Air Cleaner For Harley', category: 'Air Filter', image: 'https://www.revzilla.com/product_images/1871/4158/vance_hines_vo2_insight_air_cleaner_for_harley_black_silver_750x750.jpg', description: 'Have a glimpse inside the inner workings of your engine with the fuel and air mixing right before your eyes.', price: 449.99, brand: 'Vance & Hines', countInStock: 8)
p2 = Product.create(name: 'Dynojet Power Commander V', category: 'Fuel Management', image: 'https://www.revzilla.com/product_images/0170/4246/dynojet_power_commander_v_750x750.jpg', description: 'The Dynojet PCV adjusts your bike’s air/fuel mixture, resulting in more horsepower and torque with a smoother, more responsive throttle.', price: 300, brand: 'DYNOJET', countInStock: 20)
p3 = Product.create(name: 'Galfer Wave Rotor Front', category: 'Brakes', image: 'https://www.revzilla.com/product_images/0065/8415/galfer_wave_rotors_front_750x750.jpg', description: 'Galfer Wave Brake Rotors are laser cut from a proprietary high-carbon 420 Stainless Steel that has been heat treated and parallel diamond ground to ensure a perfect surface.', price: 320, brand: 'GALFER BRAKING SYSTEMS', countInStock: 15)

#reviews
r1 = p1.reviews.create(product_id: p1.id, name: 'Timothy Mureithi', rating: 2, comment: 'Below average performance')
r1 = p3.reviews.create(product_id: p2.id, name: 'Eric Mureithi', rating: 5, comment: 'It was great!')
r1 = p2.reviews.create(product_id: p3.id, name: 'Judy Muthoni', rating: 3, comment: 'It will do for now')
