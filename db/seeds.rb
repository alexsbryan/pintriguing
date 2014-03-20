# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

coolUser = User.create(id: 100, email: 'alex@gmail.com', password: 'password', first_name: 'Alex', last_name: "Bryan")
uncoolUser = User.create(id: 101, email: 'BIZARROalex@gmail.com', password: 'Bizpassword', first_name: 'Bizzaro', last_name: "Alex")

coolBoard = Board.create(id: 100, name: 'Cool Board', description: 'Check out this really awesome board', owner_id: 100)
unCoolBoard = Board.create(id: 101, name: 'UNCool Board', description: 'This is such an not cool board', owner_id: 101)
funCoolBoard = Board.create(id: 102, name: 'Fun+Cool Board', description: 'Fun Cool board', owner_id: 100)


catAssign1 = CategoryAssignment.create(board_id: 100, cat_id: 100)
catAssign2 = CategoryAssignment.create(board_id: 101, cat_id: 101)
catAssign3 = CategoryAssignment.create(board_id: 100, cat_id: 102)


coolPin = Pin.create(id: 100, title: 'Cool Pin', url: 'www.make.url')
unCoolPin = Pin.create(id: 101, title: 'UNCool Pin', url: 'www.fake.url')
uncouthPin = Pin.create(id: 102, title: 'Uncouth Pin', url: 'www.lake.url')


pinAssign1 = BoardAssignment.create(board_id: 100, pin_id: 100)
pinAssign2 = BoardAssignment.create(board_id: 101, pin_id: 101)
pinAssign3 = BoardAssignment.create(board_id: 102, pin_id: 102)
pinAssign4 = BoardAssignment.create(board_id: 101, pin_id: 102)

coolCategory = Category.create(id: 100, title: 'Cool')
uncoolCategory = Category.create(id: 101, title: 'unCool')
uncouthCategory = Category.create(id: 102, title: 'unCouth')
okCategory = Category.create(id: 103, title: 'Ok')
noKCategory = Category.create(id: 104, title: 'No-K')

cat1 = Category.create(id:1, title: "Animals")
cat2 = Category.create(id:2, title: "Style")
cat3 = Category.create(id:1, title: "Cookies")
cat4 = Category.create(id:1, title: "Cars")
cat5 = Category.create(id:1, title: "Sports")
cat6 = Category.create(id:1, title: "Design")
cat7 = Category.create(id:1, title: "Quotes")
cat8 = Category.create(id:1, title: "Nature")
