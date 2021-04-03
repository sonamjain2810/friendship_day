import 'dart:async';
import 'dart:io';
import 'package:facebook_app_events/facebook_app_events.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_admob/native_admob_controller.dart';
import 'package:friendship_day/StatusList.dart';
import 'package:friendship_day/widgets/CustomFBTextWidget.dart';
import 'package:friendship_day/widgets/CustomFullCard.dart';
import 'package:friendship_day/widgets/CustomOnlyTextWidget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'QuotesList.dart';
import 'utils/SizeConfig.dart';
import 'AboutUs.dart';
import 'GifsImages.dart';
import 'ImagesList.dart';
import 'MemeGenerator.dart';
import 'MessagesList.dart';
import 'MyDrawer.dart';
import 'NativeAdContainer.dart';
import 'ShayariList.dart';
import 'package:friendship_day/widgets/CustomTextReadMoreWidget.dart';
import 'widgets/CustomBannerWidget.dart';
import 'widgets/CustomBannerWidget4.dart';
import 'widgets/CustomTextOnlyWidget.dart';

// Height = 8.96
// Width = 4.14

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

const String testDevice = 'c835aea0489176f272e2d174b8d921ca';
// const String testDevice = 'testDeviceId';

class _HomePageState extends State<HomePage> {
  static final facebookAppEvents = FacebookAppEvents();
  String interstitialTag = "";

// Native Ad Open
  static String _adUnitID = NativeAd.testAdUnitId;

  final _nativeAdController = NativeAdmobController();
  double _height = 0;

  StreamSubscription _subscription;

//Native Ad Close

  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDevice != null ? <String>[testDevice] : null,
    //keywords: Keywords.adsKeywords,
    //contentUrl: 'http://foo.com/bar.html',
    childDirected: false,
    nonPersonalizedAds: true,
  );

  InterstitialAd _interstitialAd;

  InterstitialAd createInterstitialAd() {
    return InterstitialAd(
      adUnitId: InterstitialAd.testAdUnitId,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("InterstitialAd event $event");
        if (event == MobileAdEvent.closed) {
          _interstitialAd = createInterstitialAd()..load();

          if (interstitialTag != null) {
            switch (interstitialTag) {
              case "message":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => MessagesList()));
                break;
              case "best_friend_message":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        MessagesList(type: "1")));
                break;

              case "female_friend_message":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        MessagesList(type: "2")));
                break;

              case "girl_friend_message":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        MessagesList(type: "3")));
                break;

              case "funny_message":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        MessagesList(type: "4")));
                break;

              case "cute_message":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        MessagesList(type: "5")));
                break;

              case "thank_you_message":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        MessagesList(type: "6")));
                break;

              case "for_all_message":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        MessagesList(type: "7")));
                break;

              case "gif":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => GifsImages()));
                break;

              case "image":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => ImagesList()));
                break;

              case "shayari":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => ShayariList()));
                break;

              case "meme":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => MemeGenerator()));
                break;

              case "about":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => AboutUs()));
                break;

              case "status":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => StatusList()));
                break;

              case "quotes":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => QuotesList()));
                break;
              default:
            }
          }
        } else if (event == MobileAdEvent.failedToLoad) {
          if (interstitialTag != null) {
            switch (interstitialTag) {
              case "message":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => MessagesList()));
                break;

              case "best_friend_message":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        MessagesList(type: "1")));
                break;

              case "female_friend_message":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        MessagesList(type: "2")));
                break;

              case "girl_friend_message":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        MessagesList(type: "3")));
                break;

              case "funny_message":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        MessagesList(type: "4")));
                break;

              case "cute_message":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        MessagesList(type: "5")));
                break;

              case "thank_you_message":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        MessagesList(type: "6")));
                break;

              case "for_all_message":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        MessagesList(type: "7")));
                break;

              case "gif":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => GifsImages()));
                break;

              case "image":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => ImagesList()));
                break;

              case "shayari":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => ShayariList()));
                break;

              case "meme":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => MemeGenerator()));
                break;

              case "about":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => AboutUs()));
                break;

              case "status":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => StatusList()));
                break;

              case "quotes":
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => QuotesList()));
                break;
              default:
            }
          }
        } else {
          print(event.toString());
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    FirebaseAdMob.instance.initialize(appId: FirebaseAdMob.testAppId);

    _interstitialAd?.dispose();
    _interstitialAd = createInterstitialAd()..load();

    //Native Ad
    _subscription = _nativeAdController.stateChanged.listen(_onStateChanged);
    //
  }

  @override
  void dispose() {
    _interstitialAd?.dispose();
    //Native Ad
    _subscription.cancel();
    _nativeAdController.dispose();
    super.dispose();
  }

  void _onStateChanged(AdLoadState state) {
    switch (state) {
      case AdLoadState.loading:
        setState(() {
          _height = 0;
        });
        break;

      case AdLoadState.loadCompleted:
        setState(() {
          _height = 36.83 * SizeConfig.heightMultiplier;
        });
        break;

      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: Theme.of(context).appBarTheme.textTheme.headline1,
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            CustomHeader1(
              headerText: "Happy Friendship Day, User",
              imagePath:
                  "https://pbs.twimg.com/profile_images/1158115409993691138/wABb5ZLe_400x400.jpg",
              descriptionText:
                  "Hello, Check out the Messages, Wishes, Quotes, Status, Images, Shayari, Gifs & Wish Maker below that you can send to your loved ones.",
            ),
            SizedBox(
              //8
              height: 0.90 * SizeConfig.heightMultiplier,
            ),

            Padding(
              padding: EdgeInsets.all(SizeConfig.width(8)),
              child: Center(
                child: Text("Choose Anything from below",
                    style: Theme.of(context).textTheme.headline1),
              ),
            ),

            Divider(),

            // Wishes Start

            Padding(
              padding: EdgeInsets.all(SizeConfig.width(8)),
              child: Text("Wishes & Messages Category",
                  style: Theme.of(context).textTheme.headline1),
            ),

            Padding(
              padding: EdgeInsets.all(SizeConfig.width(8)),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CustomOnlyTextWidget(
                      size: size,
                      color: Colors.lightBlue,
                      text: "Best Friend",
                      ontap: () {
                        print("Best Friend Clicked");
                        interstitialTag = "best_friend_message";
                        facebookAppEvents.logEvent(
                          name: "Message List",
                          parameters: {
                            'button_id': 'best_friend_message_button',
                          },
                        );
                        _interstitialAd.isLoaded() != null
                            ? _interstitialAd?.show()
                            : Navigator.of(context).push(new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MessagesList(type: "1")));
                      },
                    ),
                    SizedBox(width: SizeConfig.width(8)),
                    CustomOnlyTextWidget(
                      size: size,
                      color: Colors.cyan,
                      text: "Female Friend",
                      ontap: () {
                        print("Female Friend Clicked");
                        interstitialTag = "female_friend_message";
                        facebookAppEvents.logEvent(
                          name: "Message List",
                          parameters: {
                            'button_id': 'female_friend_message_button',
                          },
                        );
                        _interstitialAd.isLoaded() != null
                            ? _interstitialAd?.show()
                            : Navigator.of(context).push(new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MessagesList(type: "2")));
                      },
                    ),
                    SizedBox(width: SizeConfig.width(8)),
                    CustomOnlyTextWidget(
                      size: size,
                      color: Colors.pinkAccent,
                      text: "Girl Friend",
                      ontap: () {
                        print("Girl Friend Clicked");
                        interstitialTag = "girl_friend_message";
                        facebookAppEvents.logEvent(
                          name: "Message List",
                          parameters: {
                            'button_id': 'girl_friend_message_button',
                          },
                        );
                        _interstitialAd.isLoaded() != null
                            ? _interstitialAd?.show()
                            : Navigator.of(context).push(new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MessagesList(type: "3")));
                      },
                    ),
                    SizedBox(width: SizeConfig.width(8)),
                    CustomOnlyTextWidget(
                      size: size,
                      color: Colors.lime,
                      text: "Funny",
                      ontap: () {
                        print("Funny Clicked");
                        interstitialTag = "funny_message";
                        facebookAppEvents.logEvent(
                          name: "Message List",
                          parameters: {
                            'button_id': 'funny_message_button',
                          },
                        );
                        _interstitialAd.isLoaded() != null
                            ? _interstitialAd?.show()
                            : Navigator.of(context).push(new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MessagesList(type: "4")));
                      },
                    ),
                    SizedBox(width: SizeConfig.width(8)),
                    CustomOnlyTextWidget(
                      size: size,
                      color: Colors.pink,
                      text: "Cute",
                      ontap: () {
                        print("Cute Clicked");
                        interstitialTag = "cute_message";
                        facebookAppEvents.logEvent(
                          name: "Message List",
                          parameters: {
                            'button_id': 'cute_message_button',
                          },
                        );
                        _interstitialAd.isLoaded() != null
                            ? _interstitialAd?.show()
                            : Navigator.of(context).push(new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MessagesList(type: "5")));
                      },
                    ),
                    SizedBox(width: SizeConfig.width(8)),
                    CustomOnlyTextWidget(
                      size: size,
                      color: Colors.orange,
                      text: "Thank You",
                      ontap: () {
                        print("Thank You Clicked");
                        interstitialTag = "thank_you_message";
                        facebookAppEvents.logEvent(
                          name: "Message List",
                          parameters: {
                            'button_id': 'thank_you_message_button',
                          },
                        );
                        _interstitialAd.isLoaded() != null
                            ? _interstitialAd?.show()
                            : Navigator.of(context).push(new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MessagesList(type: "6")));
                      },
                    ),
                    SizedBox(width: SizeConfig.width(8)),
                    CustomOnlyTextWidget(
                      size: size,
                      color: Colors.lightGreen,
                      text: "For All",
                      ontap: () {
                        print("For All Clicked");
                        interstitialTag = "for_all_message";
                        facebookAppEvents.logEvent(
                          name: "Message List",
                          parameters: {
                            'button_id': 'for_all_message_button',
                          },
                        );
                        _interstitialAd.isLoaded() != null
                            ? _interstitialAd?.show()
                            : Navigator.of(context).push(new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MessagesList(type: "7")));
                      },
                    ),
                  ],
                ),
              ),
            ),
            // Wishes end

            Divider(),

            NativeAdContainer(
                height: _height,
                adUnitID: _adUnitID,
                nativeAdController: _nativeAdController),

            Divider(),

            // Quotes start
            Padding(
              padding: EdgeInsets.all(SizeConfig.width(8)),
              child: Text("Select Quotes",
                  style: Theme.of(context).textTheme.headline1),
            ),

            Padding(
              padding: EdgeInsets.all(SizeConfig.width(8)),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CustomTextReadMoreWidget(
                        size: size,
                        color: Colors.grey,
                        text:
                            "Real friendship, like real poetry, is extremely rare – and precious as a pearl. – Tahar Ben Jelloun",
                      ),
                      SizedBox(width: SizeConfig.width(8)),
                      CustomTextReadMoreWidget(
                        size: size,
                        color: Colors.purpleAccent,
                        text:
                            "Friendship often ends in love; but love in friendship – Never. ~ Charles Caleb Colton",
                      ),
                      SizedBox(width: SizeConfig.width(8)),
                      CustomTextReadMoreWidget(
                        size: size,
                        color: Colors.deepOrangeAccent,
                        text:
                            "Friendship… is not something you learn in school. But if you haven’t learned the meaning of friendship, you really haven’t learned anything. – Muhammad Ali",
                      ),
                      SizedBox(width: SizeConfig.width(8)),
                      CustomTextReadMoreWidget(
                        size: size,
                        color: Colors.brown,
                        text:
                            "Love is blind; friendship closes its eyes. ~ Friedrich Nietzsche",
                      ),
                    ],
                  ),
                  onTap: () {
                    print("Quotes Clicked");
                    interstitialTag = "quotes";
                    facebookAppEvents.logEvent(
                      name: "Quotes List",
                      parameters: {
                        'button_id': 'Quotes_button',
                      },
                    );
                    _interstitialAd.isLoaded() != null
                        ? _interstitialAd?.show()
                        : Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => QuotesList()));
                  },
                ),
              ),
            ),
// Quotes end
            Divider(),

            // Wish Creator
            /*Padding(
              //16.0
              padding: EdgeInsets.all(3 * SizeConfig.widthMultiplier),
              child: 
            ),*/

            // Status Start

            Padding(
              padding: EdgeInsets.all(SizeConfig.width(8)),
              child: Text("Status at Glance",
                  style: Theme.of(context).textTheme.headline1),
            ),

            Padding(
              padding: EdgeInsets.all(SizeConfig.width(8)),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CustomFBTextWidget(
                        size: size,
                        text:
                            "My best friend can make me smile even when everyone else has given up on trying.",
                        color: Colors.indigoAccent,
                        url:
                            'http://andiwiniosapps.in/friendship_message/friendship_images/k1.PNG',
                      ),
                      SizedBox(width: SizeConfig.width(8)),
                      CustomFBTextWidget(
                        size: size,
                        text:
                            "Best friends know how stupid you are and still choose to go out in public with you.",
                        color: Colors.orangeAccent,
                        url:
                            'http://andiwiniosapps.in/friendship_message/friendship_images/k2.PNG',
                      ),
                      SizedBox(width: SizeConfig.width(8)),
                      CustomFBTextWidget(
                        size: size,
                        text:
                            "It’s not the things we have, but who we have in our lives that truly that matter.",
                        color: Colors.redAccent,
                        url:
                            'http://andiwiniosapps.in/friendship_message/friendship_images/k3.PNG',
                      ),
                      SizedBox(width: SizeConfig.width(8)),
                      CustomFBTextWidget(
                        size: size,
                        text:
                            "Sometimes, just spending time with your best friend is the only therapy you need.",
                        color: Colors.amber,
                        url:
                            'http://andiwiniosapps.in/friendship_message/friendship_images/k4.PNG',
                      ),
                    ],
                  ),
                  onTap: () {
                    print("Status Clicked");
                    interstitialTag = "status";
                    facebookAppEvents.logEvent(
                      name: "Status List",
                      parameters: {
                        'button_id': 'Status_button',
                      },
                    );
                    _interstitialAd.isLoaded() != null
                        ? _interstitialAd?.show()
                        : Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => StatusList()));
                  },
                ),
              ),
            ),
// Status end
            Divider(),

            NativeAdContainer(
                height: _height,
                adUnitID: _adUnitID,
                nativeAdController: _nativeAdController),

            Divider(),

// Shayari Start
            Padding(
              padding: EdgeInsets.all(SizeConfig.width(8)),
              child: Text("Heart Touching Shayari",
                  style: Theme.of(context).textTheme.headline1),
            ),

            Padding(
              padding: EdgeInsets.all(SizeConfig.width(8)),
              child: InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CustomTextOnlyWidget(
                      size: size,
                      color: Colors.blueGrey,
                      text:
                          "किस हद तक जाना है ये कौन जानता है\nकिस मंजिल को पाना है ये कौन जानता है\nदोस्ती के दो पल जी भर के जी लो\nकिस रोज़ बिछड जाना है ये कौन जानता है\nहैप्पी फ्रेंडशिप डे",
                    ),
                    CustomTextOnlyWidget(
                      size: size,
                      color: Colors.indigo,
                      text:
                          "दोस्ती अच्छी हो तो रंग़ लाती है\nदोस्ती गहरी हो तो सबको भाती है\nदोस्ती नादान हो तो टूट जाती है\nपर अगर दोस्ती अपने जैसी हो\nतो इतिहास बनाती है",
                    ),
                  ],
                ),
                onTap: () {
                  print("Shayari Clicked");
                  interstitialTag = "shayari";
                  facebookAppEvents.logEvent(
                    name: "Shayari List",
                    parameters: {
                      'button_id': 'Shayari_button',
                    },
                  );
                  _interstitialAd.isLoaded() != null
                      ? _interstitialAd?.show()
                      : Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => ShayariList()));
                },
              ),
            ),

// Shayari End

            Divider(),

// Wish Creator Start
            Padding(
              padding: EdgeInsets.all(SizeConfig.width(8)),
              child: Text("Create Greetings Now!!",
                  style: Theme.of(context).textTheme.headline1),
            ),
            // Wish Creator
            Padding(
              //16.0
              padding: EdgeInsets.all(SizeConfig.width(8)),
              child: CustomBannerWidget(
                  size: MediaQuery.of(context).size,
                  imagePath:
                      "http://andiwiniosapps.in/friendship_message/friendship_gifs/29.gif",
                  buttonText: "Make it",
                  topText: "Make Greetings for",
                  middleText: "Friendship Day",
                  bottomText: "Share it With Your Friends",
                  ontap: () {
                    print("Meme Clicked");
                    interstitialTag = "meme";
                    facebookAppEvents.logEvent(
                      name: "Meme Generator",
                      parameters: {
                        'button_id': 'meme_button',
                      },
                    );
                    _interstitialAd.isLoaded() != null
                        ? _interstitialAd?.show()
                        : Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                MemeGenerator()));
                  }),
            ),

// Wish Creator end
            Divider(),
            // JPG Section
            NativeAdContainer(
                height: _height,
                adUnitID: _adUnitID,
                nativeAdController: _nativeAdController),
            Divider(),

            Padding(
              padding: EdgeInsets.all(SizeConfig.width(8)),
              child: Text("Images Ready to Send",
                  style: Theme.of(context).textTheme.headline1),
            ),
            Padding(
              padding: EdgeInsets.all(SizeConfig.width(8)),
              child: InkWell(
                child: Container(
                  //color: Colors.blueGrey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      // Column 1:
                      Column(
                        children: <Widget>[
                          // Column 1 item 1:
                          CustomBannerWidget4(
                              imagePath:
                                  "http://andiwiniosapps.in/friendship_message/friendship_images/k22.PNG",
                              headingText: "",
                              bodyText: ""),
                          SizedBox(height: SizeConfig.height(8)),
                          // Column 1 item 2:
                          CustomBannerWidget4(
                              imagePath:
                                  "http://andiwiniosapps.in/friendship_message/friendship_images/k39.PNG",
                              headingText: "",
                              bodyText: ""),
                        ],
                      ),
                      // Column2:
                      Column(
                        children: <Widget>[
                          // Column 2 item 1:
                          CustomBannerWidget4(
                              imagePath:
                                  "http://andiwiniosapps.in/friendship_message/friendship_images/k26.PNG",
                              headingText: "",
                              bodyText: ""),
                          SizedBox(height: SizeConfig.height(8)),
                          // Column 1 item 2:
                          CustomBannerWidget4(
                              imagePath:
                                  "http://andiwiniosapps.in/friendship_message/friendship_images/k25.PNG",
                              headingText: "",
                              bodyText: ""),
                        ],
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  print("Images Clicked");
                  interstitialTag = "image";
                  facebookAppEvents.logEvent(
                    name: "Image List",
                    parameters: {
                      'button_id': 'Image_button',
                    },
                  );

                  _interstitialAd.isLoaded() != null
                      ? _interstitialAd?.show()
                      : Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => ImagesList()));
                },
              ),
            ),

            // JPG Section
            Divider(),

            Padding(
              padding: EdgeInsets.all(SizeConfig.width(8)),
              child: Text("Gifs Ready to Send",
                  style: Theme.of(context).textTheme.headline1),
            ),
            Padding(
              padding: EdgeInsets.all(SizeConfig.width(8)),
              child: InkWell(
                child: Container(
                  //color: Colors.blueGrey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      // Column 1:
                      Column(
                        children: <Widget>[
                          // Column 1 item 1:
                          CustomBannerWidget4(
                              imagePath:
                                  "http://andiwiniosapps.in/friendship_message/friendship_gifs/1.gif",
                              headingText: "",
                              bodyText: ""),
                          SizedBox(height: SizeConfig.height(8)),
                          // Column 1 item 2:
                          CustomBannerWidget4(
                              imagePath:
                                  "http://andiwiniosapps.in/friendship_message/friendship_gifs/38.gif",
                              headingText: "",
                              bodyText: ""),
                        ],
                      ),
                      // Column2:
                      Column(
                        children: <Widget>[
                          // Column 2 item 1:
                          CustomBannerWidget4(
                              imagePath:
                                  "http://andiwiniosapps.in/friendship_message/friendship_gifs/45.gif",
                              headingText: "",
                              bodyText: ""),
                          SizedBox(height: SizeConfig.height(8)),
                          // Column 1 item 2:
                          CustomBannerWidget4(
                              imagePath:
                                  "http://andiwiniosapps.in/friendship_message/friendship_gifs/25.gif",
                              headingText: "",
                              bodyText: ""),
                        ],
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  print("Gifs Clicked");
                  interstitialTag = "gif";
                  facebookAppEvents.logEvent(
                    name: "GIF List",
                    parameters: {
                      'button_id': 'gif_button',
                    },
                  );
                  _interstitialAd.isLoaded() != null
                      ? _interstitialAd?.show()
                      : Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => GifsImages()));
                },
              ),
            ),
            Divider(),

            NativeAdContainer(
                height: _height,
                adUnitID: _adUnitID,
                nativeAdController: _nativeAdController),

            Divider(),

            Padding(
              padding: EdgeInsets.all(SizeConfig.width(8)),
              child: Text("Play Game \"Sell Rakhi\"",
                  style: Theme.of(context).textTheme.headline1),
            ),

            CustomFullCard(
              size: MediaQuery.of(context).size,
              imageUrl: "assets/rakhi_game.jpeg",
              ontap: () {
                if (Platform.isAndroid) {
                  // Android-specific code
                  print("More Button Clicked");
                  launch(
                      "https://play.google.com/store/apps/developer?id=Festival+Messages+SMS");
                } else if (Platform.isIOS) {
                  // iOS-specific code
                  print("More Button Clicked");
                  launch("https://apps.apple.com/us/app/-/id1434054710");

                  facebookAppEvents.logEvent(
                    name: "Play Rakshabandhan Game",
                    parameters: {
                      'clicked_on_play_rakshabandhan_game': 'Yes',
                    },
                  );
                }
              },
            ),
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

class CustomHeader1 extends StatelessWidget {
  const CustomHeader1({
    Key key,
    this.headerText,
    this.imagePath,
    this.descriptionText,
  }) : super(key: key);

  final String headerText, imagePath, descriptionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 3 * SizeConfig.widthMultiplier,
        bottom: 10 * SizeConfig.widthMultiplier,
        left: 10 * SizeConfig.widthMultiplier,
        right: 10 * SizeConfig.widthMultiplier,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryVariant,
        borderRadius: BorderRadius.only(
          //30
          bottomRight: Radius.circular(MediaQuery.of(context).size.width),
        ),
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    headerText,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.white),
                  ),
                  SizedBox(
                    width: 1.93 * SizeConfig.widthMultiplier,
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(imagePath),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 2 * SizeConfig.heightMultiplier,
          ),
          Text(
            descriptionText,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                .copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
