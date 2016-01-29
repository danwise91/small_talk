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
pretentious = Theme.create(name: "pretentious")
classy_drinkers = Theme.create(name: "classy drinkers")
sports_fans = Theme.create(name: "sports fans")
bored_housewives = Theme.create(name: "bored housewives")
history_nerds = Theme.create(name: "history nerds")
science_nerds = Theme.create(name: "science nerds")


# hipster subreddits
beard = Subreddit.create(url: "https://www.reddit.com/r/BeardTalk", theme: hipster)
starbucks = Subreddit.create(url: "https://www.reddit.com/r/starbucks", theme: hipster)
#pretentious subreddits
obscure_knowledge = Subreddit.create(url: "https://www.reddit.com/r/obscureknowledge", theme: pretentious)
#classy drinkers subreddits
classic_cocktails = Subreddit.create(url: "https://www.reddit.com/r/classiccocktails", theme: classy_drinkers)
#sports fan subreddits
sports_trivia = Subreddit.create(url: "https://www.reddit.com/r/sportstrivia", theme: sports_fans)
#bored housewives subreddits
housekeeping = Subreddit.create(url: "https://www.reddit.com/r/housekeeping", theme: bored_housewives)
#history nerds subreddits
historyanecdotes = Subreddit.create(url: "https://www.reddit.com/r/historyanecdotes", theme: history_nerds)
#science nerds subreddits 
til_science = Subreddit.create(url: "https://www.reddit.com/r/TILScience", theme: science_nerds)
