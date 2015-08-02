# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(name: "Almond Toe Court Shoes, Patent Black", category: "Women’s Footwear", price: 99.00, quantity: 5, :image => File.open('db/images/almond_toe.jpg', 'rb'))
Product.create(name: "Suede Shoes, Blue", category: "Women’s Footwear", price: 42.00, quantity: 4, :image => File.open('db/images/blue_suede_shoes.jpg', 'rb'))
Product.create(name: "Leather Driver Saddle Loafers, Tan", category: "Men’s Footwear", price: 34.00, quantity: 12, :image => File.open('db/images/tan_shoes.jpg', 'rb'))
Product.create(name: "Flip Flops, Red", category: "Men’s Footwear", price: 19.00, quantity: 6, :image => File.open('db/images/red_flip_flops.jpg', 'rb'))
Product.create(name: "Flip Flops, Blue", category: "Men’s Footwear", price: 19.00, quantity: 0, :image => File.open('db/images/blue_sky_flip_flops.jpg', 'rb'))
Product.create(name: "Gold Button Cardigan, Black", category: "Women’s Casualwear", price: 167.00, quantity: 6, :image => File.open('db/images/black_cardigan.jpeg', 'rb'))
Product.create(name: "Cotton Shorts, Medium Red", category: "Women’s Casualwear", price: 30.00, quantity: 5, :image => File.open('db/images/cotton_shorts_red.jpg', 'rb'))
Product.create(name: "Fine Stripe Short Sleeve Shirt, Grey", category: "Men’s Casualwear", price: 49.99, quantity: 9, :image => File.open('db/images/grey_short_sleeve_shirt.jpg', 'rb'))
Product.create(name: "Fine Stripe Short Sleeve Shirt, Green", category: "Men’s Casualwear", price: 39.99, quantity: 3, :image => File.open('db/images/green_short_sleeve.jpg', 'rb'))
Product.create(name: "Sharkskin Waistcoat, Charcoal", category: "Men’s Formalwear", price: 75.00, quantity: 2, :image => File.open('db/images/uworks-waistcoat1.png', 'rb'))
Product.create(name: "Lightweight Patch Pocket Blazer, Deer", category: "Men’s Formalwear", price: 175.50, quantity: 1, :image => File.open('db/images/blazer.jpeg', 'rb'))
Product.create(name: "Bird Print Dress, Black", category: "Women’s Formalwear", price: 270.00, quantity: 10, :image => File.open('db/images/black_dress.jpeg', 'rb'))
Product.create(name: "Mid Twist Cut­Out Dress, Pink", category: "Women’s Formalwear", price: 540.00, quantity: 5, :image => File.open('db/images/pink_dress.jpeg', 'rb'))
