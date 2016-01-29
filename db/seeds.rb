# maybe we should manually set the ids because they keep incrementing and breaking shit unpredictably. 
# or maybe there's a better way to deal with this that i don't know about


hipster = Theme.create(id: 1, name: "hipster")
goth = Theme.create(id: 2, name: "goth")
gamer = Theme.create(id: 3,name: "gamer")
pretentious = Theme.create(id: 4, name: "pretentious")
classy_drinkers = Theme.create(id: 5,name: "classy drinkers")
sports_fans = Theme.create(id: 6, name: "sports fans")
bored_housewives = Theme.create(id: 7, name: "bored housewives")
history_nerds = Theme.create(id: 8, name: "history nerds")
science_nerds = Theme.create(id: 9, name: "science nerds")
general = Theme.create(id: 10, name: "general")

# hipster subreddits
beard = Subreddit.create(id: 1, url: "https://www.reddit.com/r/BeardTalk", theme: hipster)
starbucks = Subreddit.create(id: 2, url: "https://www.reddit.com/r/starbucks", theme: hipster)
#pretentious subreddits
obscure_knowledge = Subreddit.create(id: 3, url: "https://www.reddit.com/r/obscureknowledge", theme: pretentious)
#classy drinkers subreddits
classic_cocktails = Subreddit.create(id: 4, url: "https://www.reddit.com/r/classiccocktails", theme: classy_drinkers)
#sports fan subreddits
sports_trivia = Subreddit.create(id: 5, url: "https://www.reddit.com/r/sportstrivia", theme: sports_fans)
#bored housewives subreddits
housekeeping = Subreddit.create(id: 6, url: "https://www.reddit.com/r/housekeeping", theme: bored_housewives)
#history nerds subreddits
historyanecdotes = Subreddit.create(id: 7, url: "https://www.reddit.com/r/historyanecdotes", theme: history_nerds)
#science nerds subreddits
til_science = Subreddit.create(id: 8, url: "https://www.reddit.com/r/TILScience", theme: science_nerds)
#general subreddits
til = Subreddit.create(id: 9, url: "https://www.reddit.com/r/todayilearned", theme: general)
