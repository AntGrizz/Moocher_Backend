# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Item.destroy_all
RentedItem.destroy_all

user1 = User.create(first_name: 'Anthony', last_name: 'Gregg', username: 'ant_grizz', street: '8025 13th Street', city:'Silver Spring', zip_code: 21075, state: 'MD', user_rating: 5, renter_rating: 5)

user2 = User.create(first_name: 'Aaron', last_name:'Gregg', username: 'agthegreat1', street: '8025 13th Street', city:'Silver Spring', zip_code: 21075, state: 'MD', user_rating: 5, renter_rating: 4)

user3 = User.create(first_name: 'Annette', last_name:'Anderson', username: 'aaawayne3', street: '7121 Little Cove Farm Way', city:'Elkridge', zip_code: 21075, state: 'MD', user_rating: 4, renter_rating: 5)


item1 = Item.create(name: 'Basketball', description: 'spalding basketball', image: 'basketball', condition: 'good', user: user1)

item2 = Item.create(name: 'Book', description: 'The Spook Who Sat By The Door', image: 'book', condition: 'good', user: user1)

item3 = Item.create(name: 'Instant Pot', description: 'New Instant Pot', image: 'instant pot', condition: 'good', user: user1)


RentedItem.create( renter: user2, item: item1, start_date: '2019-04-02', end_date: '2019-05-05', start_condition: 'good', end_condition: 'good')

RentedItem.create( renter: user2, item: item2, start_date: '2019-04-21', end_date: '2019-05-05', start_condition: 'good', end_condition: 'good')

RentedItem.create( renter: user3, item: item3, start_date: '2019-04-21', end_date: '2019-05-05', start_condition: 'good', end_condition: 'good')
