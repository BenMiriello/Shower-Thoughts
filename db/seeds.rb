# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Thought.destroy_all

User.create ([
  {name: "Babs Babadil", password: "12345"},
  {name: "Ambrew Turnbuckles", password: "12345"},
  {name: "Jambraw Embroglio", password: "12345"},
  {name: "Simba the Sailor", password: "12345"},
  {name: "Estelle Getty", password: "12345"},
  {name: "Bow Wow", password: "12345"}
  # {name: "Simon Bowman", password: "12345"},
  # {name: "Scuba Steve", password: "12345"},
  # {name: "Ed Balls", password: "12345"},
  # {name: "Bob Hope", password: "12345"},
  # {name: "Wiley Coyote", password: "12345"},
  # {name: "Simon Shustrop", password: "12345"},
])

thought_text1 = [
  "Everyone hates being sung happy birthday, and everyone hates singing happy birthday, so what the hell are we doing here.",
  "It would be cool if after you died you could see the top 5 times you almost died.",
  "It kinda makes sense that the target audience for fidget spinners lost interest in them so quickly",
  "Coffee makes you hyper, but coffee shops are designed for people to chill, whereas alcohol is a depressant but bars and clubs are designed for people to be energetic.",
  "The spiders that live in Buckingham Palace now are probably the descendants of the spiders that lived there during Victorian times - it's a whole parallel royal family but with spiders",
  "We're captive on the carousel of time. We can't return we can only look behind"
]
thought_text2 = [
  "Thermometers are speedometers for atoms",
  "If Eminem’s Mom wanted to she could probably make a good amount of money selling her own spaghetti sauce",
  "It must suck to be an air conditioner repairman. You spend your day working in buildings that have no air conditioning. When it's fixed and finally cool, you leave.",
  "Do flowers exist at night?",
  "I wonder what Lil' Bow Wow is up to these days...",
  "When Snoop Dogg is 60, he'll be 420 in dog years."
]

User.all.each do |u|
  Thought.create(user_id: u.id, text: thought_text1.first)
  Thought.create(user_id: u.id, text: thought_text2.first)
  thought_text1.shift
  thought_text2.shift
end

# 40.times do
#   Like.create(user_id: User.all.sample.id, thought_id: Thought.all.sample.id)
# end

# 30.times do
#   Dislike.create(user_id: User.all.sample.id, thought_id: Thought.all.sample.id)
# end

# 20.times do
#   Like.create(user_id: User.all.sample.id, thought_id: Thought.all.sample.id)
# end
