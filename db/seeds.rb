# maybe we should manually set the ids because they keep incrementing and breaking shit unpredictably.
# or maybe there's a better way to deal with this that i don't know about
Theme.delete_all
Subreddit.delete_all
Tip.delete_all

programmers = Theme.create(id: 1, name: "programmers", category: "networking")
general = Theme.create(id: 2, name: "general mix", category: "networking")
gamer = Theme.create(id: 3,name: "gamers", category: "social")
coworkers = Theme.create(id: 4, name: "work friends", category: "networking")
classy_drinkers = Theme.create(id: 5,name: "classy drinkers", category: "social")
sports_fans = Theme.create(id: 6, name: "sports fans", category: "casual")
date_night = Theme.create(id: 7, name: "date night", category: "mixer")
history_nerds = Theme.create(id: 8, name: "history buffs", category: "social")
science_nerds = Theme.create(id: 9, name: "scientists", category: "social")
club = Theme.create(id: 10, name: "club pals", category: "mixer")
hipster = Theme.create(id: 11, name: "hipsters", category: "social")
suburban = Theme.create(id: 12, name: "suburban citizens", category: "mixer")


# hipster subreddits
beard = Subreddit.create(id: 1, url: "https://www.reddit.com/r/BeardTalk", theme: hipster)
starbucks = Subreddit.create(id: 2, url: "https://www.reddit.com/r/starbucks", theme: hipster)
#classy drinkers subreddits
liquor = Subreddit.create(id: 3, url: "https://www.reddit.com/r/liquor", theme: classy_drinkers)
classic_cocktails = Subreddit.create(id: 4, url: "https://www.reddit.com/r/classiccocktails", theme: classy_drinkers)
bartender = Subreddit.create(id: 5, url: "https://www.reddit.com/r/bartender/", theme: classy_drinkers)
#sports fan subreddits
sports_trivia = Subreddit.create(id: 6, url: "https://www.reddit.com/r/sportstrivia", theme: sports_fans)
hockey = Subreddit.create(id: 7, url: "https://www.reddit.com/r/nhl", theme: sports_fans)
baseball = Subreddit.create(id: 8, url: "https://www.reddit.com/r/mlb", theme: sports_fans)
football = Subreddit.create(id: 9, url: "https://www.reddit.com/r/nfl", theme: sports_fans)
basketball = Subreddit.create(id: 10, url: "https://www.reddit.com/r/nba", theme: sports_fans)
# date night subreddits
dating_advice = Subreddit.create(id: 11, url: "https://www.reddit.com/r/dating_advice/", theme: date_night)
#history nerds subreddits
historyanecdotes = Subreddit.create(id: 12, url: "https://www.reddit.com/r/askhistory", theme: history_nerds)
#science nerds subreddits
til_science = Subreddit.create(id: 13, url: "https://www.reddit.com/r/TILScience", theme: science_nerds)
#general subreddits
til = Subreddit.create(id: 14, url: "https://www.reddit.com/r/fascinating", theme: general)
# gamer subreddits
gamer = Subreddit.create(id: 15, url: "https://www.reddit.com/r/gamernews", theme: gamer)
# clubbing subreddits
dance = Subreddit.create(id: 16, url: "https://www.reddit.com/r/DanceTutorials", theme: club)
# coworkers happy hour subreddits
business = Subreddit.create(id: 17, url: "https://www.reddit.com/r/business/", theme: coworkers)
work_life = Subreddit.create(id: 18, url: "https://www.reddit.com/r/work", theme: coworkers)
# suburban subreddits
cooking = Subreddit.create(id: 19, url: "https://www.reddit.com/r/cooking", theme: suburban)
housekeeping = Subreddit.create(id: 20, url: "https://www.reddit.com/r/housekeeping/", theme: suburban)
cool_houses = Subreddit.create(id: 21, url: "https://www.reddit.com/r/unconventionalhomes/", theme: suburban)

Tip.create(url: 'https://google.com', description: 'Your mood is contagious. When you are closed off or nervous, those around you respond to these emotions. Learn to be the one who drives the mood of the moment. As you become comfortable and carefree so will the person you are engaged with. Learn to project your mood onto others.')
Tip.create(url: 'https://google.com', description: 'Everyone... And I mean everyone, is a person capable of hopes, dreams, anxiousness, compassion, etc. everyone has the potential to be your friend. Go out into the world and embrace this idea. Smile at everyone and be open and friendly. Men, women, fat, fit, young, old. It makes no difference. Just get comfortable being comfortable around everyone.')
Tip.create(url: 'http://www.self-confidence.co.uk/articles/quick-tips-for-better-self-confidence/', description: "If you feel under-confident, it doesn't mean other people can tell. They're often too caught up with their own stuff to notice")
Tip.create(url: 'http://www.mydomaine.com/how-to-make-small-talk/', description: 'Try starting your conversation with, “What are you passionate about?” This way, you’re allowing for the possibility that you might connect with this person in a personal, possibly meaningful way.')
Tip.create(url: 'http://www.mydomaine.com/how-to-make-small-talk/', description: 'Politics, current events, and women’s rights issues don’t have to be taboo topics for first-time conversations. In fact, you can get a lot more out of a person or group of people if you ask something controversial right off the bat. ')
Tip.create(url: 'http://www.mydomaine.com/how-to-make-small-talk/', description: 'The truth is, most of us have a desire to impress others and an intense fear of prolonged silences. We appease these feelings by plotting what we’re going to say next every time we’re not speaking. If you want to make the most out of small talk, this is not the way to go. Try listening and then thinking. ')
Tip.create(url: 'http://www.mydomaine.com/how-to-make-small-talk/', description: 'The most crucial ingredient for turning small talk into meaningful conversation is eye contact. If you make the person you are speaking with feel like their time and opinion are valued, even if you don’t agree with him or her, you are giving them the opportunity to open up.')
Tip.create(url: 'http://www.mydomaine.com/how-to-make-small-talk/', description: "You're not going to mesh wonderfully with everyone you meet. It’s entirely appropriate to excuse yourself from a conversation by saying, 'I’m going to go find my friend, but it was great chatting with you.' While it’s deeply rewarding to go into small talk with an open mind, not all small talk needs to lead to something big, like a lasting relationship. Having a polite exit option available to you relieves some of the anxious, trapped feeling some women get as a reaction to small talk.")
Tip.create(url: 'http://www.mydomaine.com/how-to-make-small-talk/', description: 'Asking questions is the best way to engage with someone. But if you go into a small-talk conversation with the goal of actually learning something that adds to your own knowledge, you’ll probably stay more focused on the topic at hand than the potential silences ahead.')
Tip.create(url: 'http://www.mydomaine.com/how-to-make-small-talk/', description: 'Making sure your body posture is open and focused is a great way to set the stage for a meaningful conversation.')
Tip.create(url: 'http://www.mydomaine.com/how-to-make-small-talk/', description: 'We think it’s best to test the waters by asking something that’s creative that you wouldn’t mind answering yourself. You could turn “Where did you grow up?” into “I love that city; why did you end up moving?” ')
Tip.create(url: 'http://www.mydomaine.com/how-to-make-small-talk/', description: 'Turning a conversation on its head is a great way to provoke meaningful and sometimes-heated discussion.')
Tip.create(url: 'http://www.forbes.com/sites/johnhall/2013/08/18/13-simple-ways-you-can-have-more-meaningful-conversations/', description: 'Ask good questions that show you’re engaged.')
Tip.create(url: 'http://www.forbes.com/sites/johnhall/2013/08/18/13-simple-ways-you-can-have-more-meaningful-conversations/', description: 'Most people appreciate it when you value their time. Sometimes, you can have a more meaningful conversation in 15 minutes than you can in an hour. What’s important to cover is how you can help each other out. Be genuine about delivering value and cut to the chase early.')
Tip.create(url: 'http://www.forbes.com/sites/johnhall/2013/08/18/13-simple-ways-you-can-have-more-meaningful-conversations/', description: 'Always get the other person to talk about himself first. Then, you’ll be able to sell yourself more naturally.')
Tip.create(url: 'http://www.forbes.com/sites/johnhall/2013/08/18/13-simple-ways-you-can-have-more-meaningful-conversations/', description: 'Simply offering a helping hand will differentiate you. Anybody can have a conversation offering to help someone out, but a small percentage actually delivers on their promises.')
Tip.create(url: 'http://www.forbes.com/sites/johnhall/2013/08/18/13-simple-ways-you-can-have-more-meaningful-conversations/', description: 'What does she do for fun? What is she passionate about? These things are important to remember. The next time you touch base, ask for an update.')
Tip.create(url: 'http://www.forbes.com/sites/johnhall/2013/08/18/13-simple-ways-you-can-have-more-meaningful-conversations/', description: 'If you’re having a conversation with multiple people, or if someone’s spouse is standing nearby, make a point to include “the outsiders” in the conversation. Too often, people are so focused on speaking to one person that they forget to include someone who could turn into a cheerleader for them after they leave.')
Tip.create(url: 'http://lifehacker.com/how-to-survive-a-party-when-you-don-t-know-anyone-1696639465', description: 'When you arrive, it’s easy to grab a drink and immediately retreat to the corner, where you feel safe. But you may be surprised at how people respond when you’re open about your vulnerability instead.')
Tip.create(url: 'http://lifehacker.com/how-to-survive-a-party-when-you-don-t-know-anyone-1696639465', description: 'If you can find the life of the party, chances are, they’ll be pretty open to chatting you up and introducing you to other people.')
Tip.create(url: 'http://lifehacker.com/how-to-survive-a-party-when-you-don-t-know-anyone-1696639465', description: 'Get on the periphery and listen. When there’s a lull, break in by elaborating on the topic or asking a question instead of stating an opinion right away. ')
Tip.create(url: 'http://lifehacker.com/how-to-survive-a-party-when-you-don-t-know-anyone-1696639465', description: 'Ask a question: This is an easy way to start a conversation, because the response is necessary. Make sure it’s an open-ended question that can’t be answered with a simple “yes” or “no.” Or, if it can be answered with a simple yes or no, make sure it allows for a follow-up.')
Tip.create(url: 'http://lifehacker.com/how-to-survive-a-party-when-you-don-t-know-anyone-1696639465', description: 'Share small details until one of them sticks: Once you’ve gauged each others’ interest with a bit of small talk, you’ll probably find there’s one topic that piques both your interests a little more than the others. Latch onto it and dive a little deeper.')
Tip.create(url: 'https://gretchenrubin.com/happiness_project/2009/05/seven-tips-for-making-good-conversation-with-a-stranger/', description: 'Comment on a topic common to both of you at the moment: the food, the room, the occasion, the weather. “How do you know our host?” “What brings you to this event?” But keep it on the positive side!')
Tip.create(url: 'https://gretchenrubin.com/happiness_project/2009/05/seven-tips-for-making-good-conversation-with-a-stranger/', description: 'Comment on a topic of general interest. A friend scans Google News right before he goes anywhere where he needs to make small talk, so he can say, “Did you hear that Justice Souter is stepping down from the bench?” or whatever might be happening.')
Tip.create(url: 'https://gretchenrubin.com/happiness_project/2009/05/seven-tips-for-making-good-conversation-with-a-stranger/', description: 'Ask open questions that can’t be answered with a single word.')
Tip.create(url: 'https://gretchenrubin.com/happiness_project/2009/05/seven-tips-for-making-good-conversation-with-a-stranger/', description: 'If you do ask a question that can be answered in a single word, instead of just supplying your own information in response, ask a follow-up question.')
Tip.create(url: 'https://gretchenrubin.com/happiness_project/2009/05/seven-tips-for-making-good-conversation-with-a-stranger/', description: 'React to what a person says in the spirit in which that that comment was offered. If he makes a joke, even if it’s not very funny, try to laugh.')
Tip.create(url: 'http://www.efficientlifeskills.com/a-simple-conversation-secret-to-making-people-instantly-feel-good-about-you/', description: 'You can easily do this by asking questions that communicate you care. For example: Go deeper than just a “What do you do?” question. Instead ask questions like: How did you get started? What do you enjoy most? ßWhat is exciting you most? Tell me more about that.')
