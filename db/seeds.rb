# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

lorem = "Blog American Apparel occupy, authentic disrupt sriracha beard mustache. Roof party tofu sriracha Bushwick Pitchfork synth. Ennui Blue Bottle street art cray, tofu Pitchfork meggings leggings post-ironic food truck. Austin sriracha viral salvia, beard ugh hella Godard ennui post-ironic swag occupy. Locavore put a bird on it kogi, before they sold out gentrify actually tofu dreamcatcher literally salvia 3 wolf moon Schlitz forage Pitchfork. Readymade cardigan Schlitz Wes Anderson, fap synth swag lomo kale chips retro irony. Occupy fanny pack post-ironic, pop-up Cosby sweater roof party fixie hoodie fap mlkshk sriracha pug irony Portland Bushwick.

Fap McSweeney's cred, Pitchfork paleo organic drinking vinegar meggings kitsch disrupt deep v Intelligentsia forage cardigan. Mlkshk drinking vinegar art party, cornhole cray XOXO Brooklyn dreamcatcher. Tonx Tumblr sustainable letterpress, Schlitz twee street art flexitarian mustache kitsch Austin tattooed. Next level pop-up drinking vinegar before they sold out viral mustache. Try-hard fashion axe kogi drinking vinegar sartorial, shabby chic single-origin coffee XOXO pop-up trust fund chillwave Intelligentsia occupy. Normcore pop-up vegan VHS bitters 3 wolf moon chia Etsy slow-carb fashion axe, put a bird on it blog ethnic Williamsburg. Pop-up food truck Odd Future quinoa DIY flannel gluten-free sustainable wolf ethical fixie, normcore deep v.

Aesthetic Vice vegan, organic Odd Future authentic Bushwick keffiyeh. Mixtape mustache Wes Anderson tattooed viral, VHS Shoreditch pug Brooklyn. Sriracha Thundercats direct trade Blue Bottle kale chips drinking vinegar. Brooklyn meh Schlitz American Apparel. Biodiesel Tumblr cardigan roof party. Try-hard keffiyeh blog bitters synth, keytar biodiesel Pinterest normcore. Pour-over artisan whatever chillwave deep v small batch tattooed you probably haven't heard of them.

Distillery bespoke Odd Future artisan. Meggings gluten-free Portland, retro beard flexitarian sustainable raw denim blog. Put a bird on it single-origin coffee farm-to-table normcore. Truffaut 8-bit freegan, gastropub try-hard retro distillery sustainable pop-up Vice you probably haven't heard of them mustache. YOLO small batch Blue Bottle, American Apparel Tumblr meh next level deep v ethical forage. Polaroid Austin tattooed mustache dreamcatcher Brooklyn. McSweeney's deep v American Apparel wolf.

McSweeney's 90's art party, semiotics High Life farm-to-table Pitchfork biodiesel fap drinking vinegar locavore raw denim. Put a bird on it Schlitz photo booth trust fund. Try-hard sartorial ethnic, Carles paleo DIY pork belly Vice Marfa keytar Godard food truck fixie selvage. Ethical street art pickled, ethnic flexitarian chambray Intelligentsia. Chambray wolf retro blog 90's, ethnic dreamcatcher. IPhone jean shorts cred, fixie polaroid retro Blue Bottle synth deep v gastropub artisan roof party ethnic Williamsburg plaid. Forage XOXO pickled, Godard skateboard PBR food truck ethical actually typewriter mumblecore polaroid Helvetica.

Organic banjo Neutra direct trade Etsy Tumblr. Kogi Carles raw denim sustainable farm-to-table. Kogi Tumblr photo booth occupy, roof party church-key food truck narwhal McSweeney's Helvetica leggings aesthetic paleo flexitarian bicycle rights. Mlkshk bitters gluten-free Helvetica, seitan fap Intelligentsia post-ironic meggings squid pop-up small batch umami. Schlitz Portland mumblecore before they sold out trust fund, chillwave deep v. Irony XOXO slow-carb, Intelligentsia Marfa four loko flannel normcore mixtape meh fanny pack Blue Bottle American Apparel freegan iPhone. High Life post-ironic food truck master cleanse, farm-to-table Cosby sweater synth occupy small batch.

Yr ethical gentrify retro cornhole put a bird on it pork belly raw denim. Etsy ethical trust fund jean shorts seitan, raw denim High Life food truck Echo Park. Flexitarian High Life kogi umami disrupt, yr pug synth distillery. Shoreditch scenester XOXO ethnic tattooed Truffaut PBR&B Tumblr occupy ugh, Wes Anderson stumptown YOLO meggings wayfarers. Artisan chambray sriracha art party flannel Truffaut. Disrupt vegan selvage cardigan bicycle rights photo booth. Retro narwhal Echo Park biodiesel chillwave.

Mustache flannel mumblecore keffiyeh photo booth. Meh drinking vinegar paleo, retro farm-to-table ethnic organic Echo Park distillery sriracha dreamcatcher trust fund lomo. Carles typewriter Tumblr twee, small batch beard stumptown hella fap fixie. Cardigan roof party sustainable, yr vinyl shabby chic quinoa +1 authentic cornhole chillwave actually photo booth flexitarian paleo. Twee selfies semiotics meggings, iPhone hashtag farm-to-table Helvetica butcher tote bag retro. McSweeney's organic swag High Life, jean shorts Odd Future lo-fi fanny pack plaid seitan art party mustache butcher Portland. Deep v biodiesel chambray, gluten-free readymade Tumblr 8-bit gentrify asymmetrical sustainable forage street art craft beer next level.

Fanny pack lo-fi banh mi bespoke, typewriter wolf organic Tonx paleo gastropub McSweeney's. Shoreditch Echo Park scenester twee. Narwhal slow-carb Odd Future readymade. Before they sold out Pinterest narwhal retro art party. VHS occupy Godard, asymmetrical readymade kitsch sartorial viral leggings raw denim ethical vegan squid McSweeney's. Hashtag lomo mixtape Thundercats, Banksy disrupt cred flannel small batch High Life next level vegan authentic. Hella trust fund lo-fi art party, mumblecore Truffaut food truck tattooed flexitarian.

Pitchfork plaid irony meh, umami banjo skateboard McSweeney's. XOXO next level meh fanny pack 8-bit, slow-carb keytar chillwave Carles. Deep v lomo kogi, disrupt actually pork belly tousled art party salvia readymade. Messenger bag try-hard organic mlkshk semiotics, beard fap craft beer. Flannel fixie direct trade authentic lomo. Shabby chic ethical VHS, Wes Anderson pickled blog bicycle rights put a bird on it High Life tote bag Marfa. Banh mi whatever Pitchfork four loko fingerstache."

loremArr = lorem.split(".")
boards = []






coolUser = User.create(id: 100, email: 'alex@gmail.com', password: 'password', first_name: 'Alex', last_name: "Bryan")
uncoolUser = User.create(id: 101, email: 'BIZARROalex@gmail.com', password: 'Bizpassword', first_name: 'Bizzaro', last_name: "Alex")

categories = %w(Animals Style Cookies Cars Sports Design Quotes Nature Cool Uncool Uncouth)

# cat1 = Category.create(id:1, title: "Animals")
# cat2 = Category.create(id:2, title: "Style")
# cat3 = Category.create(id:3, title: "Cookies")
# cat4 = Category.create(id:4, title: "Cars")
# cat5 = Category.create(id:5, title: "Sports")
# cat6 = Category.create(id:6, title: "Design")
# cat7 = Category.create(id:7, title: "Quotes")
# cat8 = Category.create(id:8, title: "Nature")

categories.length.times do |t|
  cat = Category.create( title: categories[t])
  title= categories[t]
   a = Board.create(name: title, description: 'Check out this really awesome board', owner_id: 100)
   CategoryAssignment.create(board_id: a.id, cat_id: cat.id)
end




# coolBoard = Board.create(id: 100, name: 'Cool Board', description: 'Check out this really awesome board', owner_id: 100)
# unCoolBoard = Board.create(id: 101, name: 'UNCool Board', description: 'This is such an not cool board', owner_id: 101)
# funCoolBoard = Board.create(id: 102, name: 'Fun+Cool Board', description: 'Fun Cool board', owner_id: 100)
#

# catAssign1 = CategoryAssignment.create(board_id: 100, cat_id: 100)
# catAssign2 = CategoryAssignment.create(board_id: 101, cat_id: 101)
# catAssign3 = CategoryAssignment.create(board_id: 100, cat_id: 102)
#
#
# coolPin = Pin.create(id: 500, title: 'Cool Pin', url: 'http://www.google.com', img_url:"http://placekitten.com/200/400")
# unCoolPin = Pin.create(id: 501, title: 'UNCool Pin', url: 'http://www.techcrunch.com', img_url: "http://placekitten.com/300/400" )
# uncouthPin = Pin.create(id: 502, title: 'Uncouth Pin', url: 'http://www.espn.com', img_url: "http://placekitten.com/400/400")

200.times do |t|
  num = 400 + t
  pin = Pin.create(id: (t), title: "Cool Pin #{t}", url: 'http://www.google.com', img_url:"http://lorempixel.com/350/#{num.to_s}")
  BoardAssignment.create(board_id: (1..categories.length).to_a.sample, pin_id: t, description: loremArr.sample)

end


# pinAssign1 = BoardAssignment.create(board_id: 100, pin_id: 100)
# pinAssign2 = BoardAssignment.create(board_id: 101, pin_id: 101)
# pinAssign3 = BoardAssignment.create(board_id: 102, pin_id: 102)
# pinAssign4 = BoardAssignment.create(board_id: 101, pin_id: 102)
#
# coolCategory = Category.create(id: 100, title: 'Cool')
# uncoolCategory = Category.create(id: 101, title: 'unCool')
# uncouthCategory = Category.create(id: 102, title: 'unCouth')
# okCategory = Category.create(id: 103, title: 'Ok')
# noKCategory = Category.create(id: 104, title: 'No-K')

