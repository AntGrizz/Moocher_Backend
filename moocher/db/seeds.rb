# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'database_cleaner'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

user1 = User.create(first_name: 'Anthony', last_name: 'Gregg', username: 'ant_grizz', password: 'password1', street: '8025 13th Street', city:'Silver Spring', zip_code: 21075, state: 'MD', user_rating: 5, renter_rating: 5)

user2 = User.create(first_name: 'Aaron', last_name:'Gregg', username: 'agthegreat1', password: 'password1', street: '8025 13th Street', city:'Silver Spring', zip_code: 21075, state: 'MD', user_rating: 5, renter_rating: 4)

user3 = User.create(first_name: 'Annette', last_name:'Anderson', username: 'aaawayne3', password: 'password1', street: '7121 Little Cove Farm Way', city:'Elkridge', zip_code: 21075, state: 'MD', user_rating: 4, renter_rating: 5)


item1 = Item.create(name: 'Basketball', description: 'spalding basketball', image: 'https://i.ebayimg.com/images/g/51oAAOSwjKtceMmh/s-l300.jpg', condition: 'Good', user: user1)

item2 = Item.create(name: 'Book', description: 'The Spook Who Sat By The Door', image: 'https://i.ebayimg.com/images/a/T2eC16N,!zoE9s5nd8zFBS!nZIPQiw~~/s-l300.jpg', condition: 'Good', user: user1)

item3 = Item.create(name: 'Instant Pot', description: 'New Instant Pot', image: 'https://instantpot.com/wp-content/uploads/2018/11/Pots-Duo-300x300.png', condition: 'Good', user: user1)

item4 = Item.create(name: 'TV', description: 'Samsung HD 1080p', image: 'https://i.ebayimg.com/images/g/XI0AAOSw4UtWSHUn/s-l300.jpg', condition: 'Fair', user: user1)

item5 = Item.create(name: 'Playstation 4', description: 'Playstation 4', image: 'https://hips.hearstapps.com/pop.h-cdn.co/assets/cm/15/05/54cb2122b2fdc_-_ps4firstlook-01-mdn.jpg', condition: 'Good', user: user1)

item6 = Item.create(name: 'DSLR', description: 'old camera', image: 'https://www.usa.canon.com/internet/wcm/connect/us/327de19b-5fd6-4d22-88b2-dfa7a47486d8/eos-5ds-r-dslr-camera-3q-lens-300x300-v3.png?MOD=AJPERES&CACHEID=ROOTWORKSPACE.Z18_P1KGHJ01L85180AUEPQQJ53034-327de19b-5fd6-4d22-88b2-dfa7a47486d8-mn5b7FZ&&alt=', condition: 'Poor', user: user1)

item7 = Item.create(name: "Jordan 1's", description: "Banned Jordan 1's, creases on the left shoe toebox", image: "https://www.airmaxp.com/image/cache/catalog/products/air-jordan-1-1510906-300x300.jpg", condition: 'Fair', user: user1)

item8 = Item.create(name: "Wilson Baseball Glove", description: "Old Baseball Glove", image: 'https://i.ebayimg.com/images/g/M2cAAOSwiONYLasI/s-l300.jpg', condition: 'Poor', user: user1)

item9 = Item.create(name: "Water Bottle", description: "Black Water Bottle", image: 'https://images.costco-static.com/ImageDelivery/imageService?profileId=12026540&imageId=100422284-847__1&recipeName=300', condition: 'Good', user: user1)

item10 = Item.create(name: "Volkswagen GLI", description: "Brand new Volkswagen", image: 'https://images.offerup.com/YlBJngqM4NdzlkyzXrLcYa1oBzM=/300x0/smart/491d/o49573195_26596.jpg', condition: 'Good', user: user2)

item11 = Item.create(name: "Water Bottle", description: "Black Water Bottle", image: 'https://images.costco-static.com/ImageDelivery/imageService?profileId=12026540&imageId=100422284-847__1&recipeName=300', condition: 'Poor', user: user2)

item12 = Item.create(name: "Sword", description: "Samurai Sword", image: 'https://cdn.shopify.com/s/files/1/2234/4067/products/DSC01282_5b1ca12d-cc8f-4418-97e6-40300e13dd93_300x300.jpg?v=1527247736', condition: 'Fair', user: user2)

item13 = Item.create(name: "Yeezy's", description: "Yeezy 350's", image: 'https://i.ebayimg.com/images/g/SXkAAOSwnCFaIKOx/s-l300.png', condition: 'Good', user: user2)

item14 = Item.create(name: "Power Drill", description: "Dewalt Power Drill", image: 'https://hips.hearstapps.com/pop.h-cdn.co/assets/cm/15/05/54cb1c48dd2f0_-_cordless-drill-0913-2a8a1v-mdn.jpg', condition: 'Poor', user: user2)

item15 = Item.create(name: "Macbook", description: '13" Macbook Pro', image: 'https://i.ebayimg.com/00/s/MTYwMFgxNjAw/z/zUUAAOSwXQZZd14e/$_35.JPG?set_id=89040003C1', condition: 'Good', user: user2)

item16 = Item.create(name: "Bose Headphones", description: "Bose QuietComfort 35", image: 'https://images-na.ssl-images-amazon.com/images/I/41-voDCMtzL._SY300_QL70_.jpg', condition: 'Good', user: user3)

item17 = Item.create(name: "Apple Watch", description: "Apple Watch Series 4 40 mm", image: 'https://i.ebayimg.com/images/g/TXQAAOSwpaZbmlQj/s-l300.jpg', condition: 'Good', user: user3)

item18 = Item.create(name: "Foam Roller", description: "Blue Foam Roller", image: 'https://i.ebayimg.com/images/g/J2UAAOSw6AVbX8T1/s-l300.jpg', condition: 'Good', user: user3)

item19 = Item.create(name: "Foot Massager", description: "Triducna Foot Massager Electric", image: 'https://i.pinimg.com/736x/93/ed/4c/93ed4cba5cdb25edf208485980c0aab4.jpg', condition: 'Good', user: user3)

item20 = Item.create(name: "Vitamix A2500", description: "Vitamix A2500", image: 'https://images-na.ssl-images-amazon.com/images/I/61S9plpYHQL._AC_UL300_SR300,300_.jpg', condition: 'Good', user: user3)

item21 = Item.create(name: "Blue Ray Player", description: "Black Blue Ray Player", image: 'https://images-na.ssl-images-amazon.com/images/I/31dZ%2BRDEHsL._SY300_QL70_.jpg', condition: 'Good', user: user3)





RentedItem.create( renter: user2, item: item1, start_date: '2019-04-02', end_date: '2019-05-05', start_condition: 'Good', end_condition: 'Good', status: 'rented')

RentedItem.create( renter: user2, item: item2, start_date: '2019-04-21', end_date: '2019-05-05', start_condition: 'Good', end_condition: 'Good', status: 'rented')

RentedItem.create( renter: user3, item: item3, start_date: '2019-04-21', end_date: '2019-05-05', start_condition: 'Good', end_condition: 'Good', status: 'rented')

RentedItem.create( renter: user3, item: item4, start_date: '2019-04-21', end_date: '2019-05-05', start_condition: 'Good', end_condition: 'Good', status: 'pending')

RentedItem.create( renter: user3, item: item5, start_date: '2019-04-21', end_date: '2019-05-05', start_condition: 'Good', end_condition: 'Good', status: 'pending')

RentedItem.create( renter: user2, item: item6, start_date: '2019-04-21', end_date: '2019-05-05', start_condition: 'Good', end_condition: 'Good', status: 'pending')

RentedItem.create( renter: user1, item: item10, start_date: '2019-04-21', end_date: '2019-05-05', start_condition: 'Good', end_condition: 'Good', status: 'rented')

RentedItem.create( renter: user3, item: item10, start_date: '2019-05-10', end_date: '2019-05-15', start_condition: 'Good', end_condition: 'Good', status: 'rented')

group1 = Group.create(name: "Family")
group2 = Group.create(name: "Friends")
group3 = Group.create(name: "Basketball Friends")
group4 = Group.create(name: "Flatiron Family")

UserGroup.create(user: user1, group: group1)
UserGroup.create(user: user2, group: group1)
UserGroup.create(user: user3, group: group1)
