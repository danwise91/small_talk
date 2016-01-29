# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

hipster = Theme.create(id: 1, name: "hipster")
goth = Theme.create(id: 2, name: "goth")
gamer = Theme.create(id: 3, name: "gamer")

# hipster subreddits
beard = Subreddit.create(id: 1, url: "https://www.reddit.com/r/BeardTalk", theme: hipster)
starbucks = Subreddit.create(id: 2, url: "https://www.reddit.com/r/starbucks", theme: hipster)
