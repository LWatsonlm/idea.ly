# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
Comment.destroy_all

Post.create!(title: "Thinking about becoming a writer", body: "What type of fanfic do you like? Would you read my Ed, Edd, n Eddy fanfic?")
Post.create!(title: "What's your favorite food fusion?", body: "Me and my buddies are thinking of opening a restaurant. Thinking of possible types of restaurants. What Mexican and Asian? Indian and American? or something completeley different like sushi burritos?")
Post.create!(title: "Bikers!! What would be helpful to you?", body: "Calling all D.C. bicyclists! I'm in the middle of customer discovery for my new product. As a city commuter, what would be helpful for you?")
Post.create!(title: "Should I become a front end developer, or a back end developer?", body: "Thinking about switching careers but having a hard time. Can anyone give me feedback on either career path?")


Comment.create!(title: "biker, here!", body: "Yeah, I love biking in D.C. It would be helpful to know which streets to avoid because there isn't any bike lanes", post_id: 3)
Comment.create!(title: "yum! I'm hungry!", body: "I LOVE FOOD. Honestly, I would try to think out of the box, something that hasn't been created yet. Pizza Sushi?, Chicken Cupcakes?", post_id: 2)
Comment.create!(title: "Hmmm...", body: "It all depends on what you like to do. Try some courses on Code Academy or Treehouse and let us know what you liked.", post_id: 4)
Comment.create!(title: "Not a fan", body: "Ed, Edd, n Eddy? Nah, not a fan. Maybe try writing about something more relevant. Like Trump fanfiction... however, it would be super hard to know if it's real or not", post_id: 1)