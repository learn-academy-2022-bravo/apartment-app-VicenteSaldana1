# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.where(email: 'test@test.test').first_or_create(password: '12345678', password_confirmation: '12345678')

apartment = [
  {
    street: '5590 Baltimore Drive', 
    city: 'La Mesa', 
    state: 'California',
    manager: 'Lebron James',
    email: 'lebron@gmail.com',
    price: '$5000',
    bedrooms: 2, 
    bathrooms: 2,
    pets: 'Yes',
    image: 'https://cdngeneral.rentcafe.com/dmslivecafe/2/102601/THEA%20at%20Metropolis%20Two%20Bedroom%20Living%20Area.jpg?crop=(0,0,300,200)&cropxunits=300&cropyunits=200&width=380',
    user_id: 1
  },
  {
    street: '6690 Baltimore Drive', 
    city: 'La Mesa', 
    state: 'California',
    manager: 'Kobe Bean Bryant',
    email: 'kobe@gmail.com',
    price: '$6000',
    bedrooms: 3, 
    bathrooms: 3,
    pets: 'Yes',
    image: 'https://images1.apartments.com/i2/Mel4Hm5GU_A13jVZId0JNpI5il1Qshvtiie1_5bXZhY/117/image.jpg',
    user_id: 1
  },
  {
    street: '7589 Baltimore Drive', 
    city: 'La Mesa', 
    state: 'California',
    manager: 'Kobe Bean Bryant',
    email: 'kobe@gmail.com',
    price: '$6000',
    bedrooms: 3, 
    bathrooms: 3,
    pets: 'Yes',
    image: 'https://images1.apartments.com/i2/Mel4Hm5GU_A13jVZId0JNpI5il1Qshvtiie1_5bXZhY/117/image.jpg',
    user_id: 1
  },
]

apartment.each do |each_apartment|
  user.apartments.create each_apartment
  puts "creating apartment #{each_apartment}"
end