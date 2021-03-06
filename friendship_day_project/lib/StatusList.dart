import 'package:facebook_app_events/facebook_app_events.dart';
import 'package:flutter/material.dart';

import 'StatusDetailPage.dart';
import 'utils/SizeConfig.dart';


class StatusList extends StatefulWidget {
  @override
  _StatusListState createState() => _StatusListState();
}

class _StatusListState extends State<StatusList> {
  static final facebookAppEvents = FacebookAppEvents();
  var data = [
    // Status

    "A gesture of friendship, no matter how small it is, is always appreciated.",

    "Only a true friend can see your invisible tears.",

    "My best friend can make me smile even when everyone else has given up on trying.",

    "मैं तुझे बार-बार इसलिए समझाता हूँ\nए-मेरे दोस्त..\nतुझे टूटा हुआ देखकर मैं खुद भी टूट जाता हुं",

    "जहा मोहब्बत छूट जाये…\nवहा दोस्ती सहारा बनती है",

    "Dosti imtihaan nahi bharose ka naam hai\n Dosti me shak nahi dosti khud ek shaan h.",

    "Rab se yehi dua h ki dost sabhi muskuraate rahe,\n Dosti, Dosti se nibhti hain Dosti se nibhate rahein",

    "Best friends know how stupid you are and still choose to go out in public with you.",

    "Friendships are no accident.",

    "Friends don’t let friends do stupid things – alone.",

    "It’s not the things we have, but who we have in our lives that truly that matter.",

    "खिंच कर उतार देते हैं\nउम्र की चादर…\nये कम्भख्त दोस्त…\nकभी बूढ़ा नहीं होने देते",

    "दोस्तों की दोस्ती में कभी कोई रूल नहीं होता है\nऔर ये सिखाने के लिए, कोई स्कूल नहीं होता है",

    "Aksar jimmedariya majbur kar deti h apna shehar chodne ko\nVarna kon bachpan k sathi aur apno k bina jeena nahi chahta",

    "Sometimes, just spending time with your best friend is the only therapy you need.",

    "Nothing in life is scary when you have a best friend by your side.",

    "A best friend is someone you can do nothing and anything with, but still, have a great time.",

    "Best friends make the hard times easier and the good times even better.",

    "A piece of my heart will always smile whenever I think about you.",

    "सालो बाद मिले थे, हम एक दूसरे से\nउसकी गाडी बड़ी थी और मेरी दाढ़ी…।",

    "दोस्ती में ना कोई वार, ना कोई दिन होता हैं,\nये तो वो एहसास है जिसमे बस यार होता हैं|",

    "A real friend will never get tired of hearing your drama stories over and over again.",

    "I don’t know if you know this, but I would go out of my way to make sure that you are okay.",

    "Great friends are hard to find, even harder to leave, and simply impossible to forget.",

    "You’re my best friend. I wouldn’t dream of being this weird or stupid with anyone else.",

    "We’re the best of friends. I will always pick you up when you fall – after I stop laughing.",

    "Someday, we’ll be the old ladies who cause trouble in the nursing home.",

    "ए सुदामा\nमुझे भी सिखा दें\nकोई हुनर तेरे जैसा,\nमुझे भी मिल जायेगा\nफिर कोई दोस्त कृष्ण जैसा।",

    "सच्चे दोस्त हमे कभी गिरने नहीं देते,\nना किसी कि नजरों मे, ना किसी के कदमों मे",

    "Best friends are like four-leaf clovers. They’re extremely hard to find and lucky to have.",

    "True friends never judge each other. They just judge other people – together.",

    "Friendship is all about finding other people who are your type of crazy.",

    "Friends overlook your broken fence and admire the beautiful flowers in your garden.",

    "Being honest may not make you a lot of friends, but it will make you the right ones.",

    "My friends and I are the funniest group of humans I know.",

    "I feel most beautiful on the inside when I’m with my best friends and we’re having a good time."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Status List",
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
                                  StatusDetailPage(data[index], index)));

                      facebookAppEvents.logEvent(
                        name: "Status List",
                        parameters: {
                          'clicked_on_status_index': '$index',
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
