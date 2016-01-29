# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

hipster = Theme.create(name: "hipster")
goth = Theme.create(name: "goth")
gamer = Theme.create(name: "gamer")

# hipster subreddits
beard = Subreddit.create(url: "https://www.reddit.com/r/BeardTalk", theme: hipster)
starbucks = Subreddit.create(url: "https://www.reddit.com/r/starbucks", theme: hipster)
