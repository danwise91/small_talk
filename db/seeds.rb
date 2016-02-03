# maybe we should manually set the ids because they keep incrementing and breaking shit unpredictably.
# or maybe there's a better way to deal with this that i don't know about
Theme.delete_all
Subreddit.delete_all
Tip.delete_all

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
obscure_knowledge = Subreddit.create(id: 3, url: "https://www.reddit.com/r/crappydesign", theme: pretentious)
#classy drinkers subreddits
classic_cocktails = Subreddit.create(id: 4, url: "https://www.reddit.com/r/classiccocktails", theme: classy_drinkers)
#sports fan subreddits
sports_trivia = Subreddit.create(id: 5, url: "https://www.reddit.com/r/sportstrivia", theme: sports_fans)
#bored housewives subreddits
housekeeping = Subreddit.create(id: 6, url: "https://www.reddit.com/r/housekeeping", theme: bored_housewives)
#history nerds subreddits
historyanecdotes = Subreddit.create(id: 7, url: "https://www.reddit.com/r/askhistory", theme: history_nerds)
#science nerds subreddits
til_science = Subreddit.create(id: 8, url: "https://www.reddit.com/r/TILScience", theme: science_nerds)
#general subreddits
til = Subreddit.create(id: 9, url: "https://www.reddit.com/r/todayilearned", theme: general)
goth = Subreddit.create(id: 10, url: "https://www.reddit.com/r/goth/", theme: goth)
gamer = Subreddit.create(id: 11, url: "https://www.reddit.com/r/aww/", theme: gamer)

tip1 = Tip.create(id: 1, url: 'https://google.com', description: "You don't want anything, you don't need anything, so don't approach with a goal in mind. There is nothing wrong with approaching a beautiful/handsome person, but your intent can be toxic. I keep in mind that I do not know this person, so how can I possibly want something? I approach with no intent to get anything but to give something. My time. I don't expect everyone to want it but I give it. I extend the invitation of friendship. If there is a spark that I feel beyond what is on the surface then I will project my feeling and extend an invitation to join me. At no point do I expect anything from anybody as I wouldn't want anyone to expect something from me.")
tip2 = Tip.create(id: 2, url: 'https://google.com', description: 'Your mood is contagious. When you are closed off or nervous, those around you respond to these emotions. Learn to be the one who drives the mood of the moment. As you become comfortable and carefree so will the person you are engaged with. Learn to project your mood onto others.')
tip3 = Tip.create(id: 3, url: 'https://google.com', description: 'Everyone... And I mean everyone, is a person capable of hopes, dreams, anxiousness, compassion, etc. everyone has the potential to be your friend. Go out into the world and embrace this idea. Smile at everyone and be open and friendly. Men, women, fat, fit, young, old. It makes no difference. Just get comfortable being comfortable around everyone.')
tip4 = Tip.create(id: 4, url: 'http://www.self-confidence.co.uk/articles/quick-tips-for-better-self-confidence/', description: "If you feel under-confident, it doesn't mean other people can tell. They're often too caught up with their own stuff to notice")
