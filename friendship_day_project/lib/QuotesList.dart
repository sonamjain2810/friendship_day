import 'package:facebook_app_events/facebook_app_events.dart';
import 'package:flutter/material.dart';

import 'QuotesDetailPage.dart';
import 'utils/SizeConfig.dart';

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  static final facebookAppEvents = FacebookAppEvents();
  var data = [
    //Quotes

    "“Real friendship, like real poetry, is extremely rare – and precious as a pearl.” – Tahar Ben Jelloun",

    "“A friend is someone who knows the song in your heart and can sing it back to you when you have forgotten the words.” – Shania Twain",

    "Best friends are the people you can call at any hour of the day to complain, cry or laugh.",

    "A real friend sees your first tear, wipes the second, and stops the third.",

    "We’ll always be best friends because – let’s face it – you already know way too much.",

    "My best friend is the one who brings out the best in me. ~ Henry Ford",

    "Friends show their love in times of trouble, not in happiness. ~ Euripides\nYou are my true friend. Happy Friendship Day My Buddy",

    "Friendship often ends in love; but love in friendship – Never. ~ Charles Caleb Colton",

    "The strong bond of friendship is not always a balanced equation; friendship is not always about giving and taking in equal shares. Instead, friendship is grounded in a feeling that you know exactly who will be there for you when you need something, no matter what or when. ~ Simon Sinek",

    "Friends are born, not made. ~ Henry Adams",

    "Friends are the siblings God never gave us. ~ Mencius",

    "A true friend knows your weaknesses but shows you your strengths; feels your fears but fortifies your faith; sees your anxieties but frees your spirit; recognizes your disabilities but emphasizes your possibilities.",

    "Remember, the greatest gift is not found in a store nor under a tree, but in the hearts of true friends.",

    "We’re more than just friends. We’re like a really small gang.",

    "A best friend is the one thing everyone needs in this life.",

    "Don’t underestimate the importance of having a friend who can make you smile.",

    "A true friend will cry when you leave. A fake friend will leave when you cry.",

    "“Friendship… is not something you learn in school. But if you haven’t learned the meaning of friendship, you really haven’t learned anything.” – Muhammad Ali",

    "We have three types of friends in life: Friends for a Reason ~ Friends for a Season & Friends for a Lifetime.\nAnd you are for life-time. Happy Friendship Day",

    "What is a Best friend? A single soul in two bodies.",

    "Cute relationship is … when someone is angry and says I will never talk to you . And later comes back to you to just inform you ….. I am still angry.",

    "“It takes a long time to grow an old friend.” ~John Leonard",

    "Love is blind; friendship closes its eyes. ~ Friedrich Nietzsche",

    "The one who has a good friend, does’t need any mirror.",

    "The better part of one’s life consists of his friendships. -Abraham Lincoln",

    "A friend is someone who knows the song in your heart, and can sing it back to you when you have forgotten the words. – Unknown",

    "“Friends are the most important ingredient in this recipe of life.” Happy Friends Day\n~ Unknown",

    "A true friend sees the first tear, catches the second an stops the third. Happy Friendship Day my true friend.",

    "“The love of my life is the love between friends.”",

    "I don’t need my life to be perfect . I just want to be happy . With a few close friends who love me just the way I am.",

    "The best time to make friends is before you need them. ~ Ethel Barrymore",

    "Don’t look for someone who will solve all your problems. Look for someone who won’t let you to face them alone.",

    "People should be blessed in life with friends who are both mirrors and shadow . Mirrors don’t lie and shadow never leave.",

    "We’re born alone, we live alone, we die alone. Only through our love and friendship can we create the illusion for the moment that we’re not alone. ~ Orson Welles",

    "A beautiful friendship can change people.",

    "One of the most beautiful qualities of true friendship is to understand and to be understood.\n~ Lucius Annaeus Seneca",

    "The greatest gift of life is friendship, and I have received it. ~ Hubert H. Humphrey\nHappy Friendship Day My Friend",

    "One loyal friend is worth ten thousand relatives. ~ Euripides",

    "Friend is one, who (F)inds you in a (R)ush of people, (I)nspires you to do something in life, catch your (E)motions and (N)ever leaves you till (D)eath.",

    "Love is friendship that has caught fire. It is quiet understanding, mutual confidence, sharing and forgiving. It is loyalty through good and bad times. It settles for less than perfection and makes allowances for human weaknesses. ~ Ann Landers",

    "Friendship is always a sweet responsibility, never an opportunity. ~ Khalil Gibran",

    "Don’t walk behind me; I may not lead. Don’t walk in front of me; I may not follow. Just walk beside me and be my friend.",

    "There is nothing on this earth more to be prized than true friendship. ~ Thomas Aquinas",

    "I cannot even imagine where I would be today were it not for that handful of friends who have given me a heart full of joy. Let’s face it, friends make life a lot more fun. ~ Charles R. Swindoll",

    "Friends and good manners will carry you where money won’t go. ~ Margaret Walker",

    "Only a friend is someone who gives you total freedom to be yourself. ~ Jim Morrison",

    "Nothing makes the earth seem so spacious as to have friends at a distance; they make the latitudes and longitudes.” – Henry David Thoreau",

    "“Sweet is the memory of distant friends! Like the mellow rays of the departing sun, it falls tenderly, yet sadly, on the heart.” – Washington Irving",

    "“Each friend represents a world in us, a world possibly not born until they arrive, and it is only by this meeting that a new world is born.” – Anais Nin",

    "“A friend is one that knows you as you are, understands where you have been, accepts what you have become, and still, gently allows you to grow.” – William Shakespeare",

    "“Friendship is like a perennial river which flows forever. It may change it’s path but will never ever dry up.” – Pinaki Prasad Mohanty",

    "“It is only the great hearted who can be true friends. The mean and cowardly, Can never know what true friendship means.” – Charles Kingsley",

    "The best mirror is an old friend",

    "My best friend is the one who brings out the best in me",

    "Close friends love you for who you are, not what they want you to be",

    "A single rose can be my garden… a single friend, my world. ~ Leo Buscaglia\nI Love you and happy friendship day my friend",

    "“Each friend represents a world in us, a world possibly not born until they arrive, and it is only by this meeting that a new world is born.” ~ Anais Nin",

    "A friend is what the heart needs all the time. ~ Henry Van Dyke",

    "A single friend can change your entire world.",

    "When I promise not to tell anyone, just know that my best friend doesn’t count.",

    "Your true friends are the ones who have only nice things to say about you behind your back.",

    "Friends are like the bacon bits in the giant salad bowl we call life.",

    "One who finds a faithful friend, finds a treasure",

    "The only way to have a best friend is to be one",

    "A best friend is like a four-leaf clover, hard to find, lucky to have",

    "Friendship is a beautiful thing",

    "Truly great friends are hard to find, difficult to leave, and impossible to forget",

    "The great thing about new friends is that they bring new energy to your soul",

    "Every new friend is a new adventure…the start of more memories",

    "We need old friends to help us grow old and new friends to help us stay young",

    "Walking with a friend in the dark is better than walking alone in the light",

    "I’m close to very few people but those few people mean everything to me",

    "It’s me and my Best Friend for Life!",

    "Meet my Partner in Crime ??",

    "“The love that comes from friendship is the underlying facet of a happy life.” – Chelsea Handler",

    "“It is one of the blessings of old friends that you can afford to be stupid with them.” – Ralph Waldo Emerson",

    "“A true friend freely, advises justly, assists readily, adventures boldly, takes all patiently, defends courageously, and continues a friend unchangeably. – William Penn",

    "“Don’t walk in front of me, I may not follow. Don’t walk behind me, I may not lead. Walk beside me and be my friend.” – Albert Camus",

    "“A loyal friend laughs at your jokes when they’re not so good, and sympathizes with your problems when they’re not so bad.” – Arnold H. Glasgow",

    "“Friendship is a beautiful promise between two people to be there for each other.”",

    "“True friendship multiplies the good in life and divides its evils. Strive to have friends, for life without friends is like life on a desert island… to find one real friend in a lifetime is good fortune; to keep him is a blessing.” – Baltasar Gracian",

    "I am grateful to God for giving me such a friend like you. You are the most precious gift in my life. Only you make me laugh during my bad times. Happy Friendship Day to you!",

    "No one can make me feel special like you do. You are more like a family to me right now. Cheers to our friendship and wishing you a Happy Friendship Day!",

    "I feel lucky to have you as my friend in life. You are much more than a friend to me right now. Happy Friendship Day."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quotes List",
          style: Theme.of(context).appBarTheme.textTheme.headline1,
        ),
      ),
      body: SafeArea(
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) =>
                                  QuotesDetailPage(data[index], index)));

                      facebookAppEvents.logEvent(
                        name: "Quotes List",
                        parameters: {
                          'clicked_on_quotes_index': '$index',
                        },
                      );
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.all(1.93 * SizeConfig.widthMultiplier),
                      child: Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primaryVariant,
                                ),
                                borderRadius:
                                    // 40 /8.98 = 4.46
                                    BorderRadius.all(Radius.circular(
                                        4.46 * SizeConfig.widthMultiplier))),
                            child: ListTile(
                              leading: Icon(Icons.brightness_1,
                                  color:
                                      Theme.of(context).primaryIconTheme.color),
                              title: Text(
                                data[index],
                                maxLines: 2,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              trailing: Icon(Icons.arrow_forward_ios,
                                  color:
                                      Theme.of(context).primaryIconTheme.color),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: data.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
