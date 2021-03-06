import 'package:facebook_app_events/facebook_app_events.dart';
import 'package:flutter/material.dart';
import 'utils/SizeConfig.dart';
import 'ShayariDetailPage.dart';

class ShayariList extends StatefulWidget {
  @override
  _ShayariListState createState() => _ShayariListState();
}

class _ShayariListState extends State<ShayariList> {
  static final facebookAppEvents = FacebookAppEvents();
  var data = [
    "ऐ दोस्त मै तेरी खुशीयां बाटने शायद न आ सकुं\nपर ये वादा रहा\nजब गम आऐ तो खबर कर देना, सारे के सारे ले जाउंगादोस्त\nहैप्पी फ्रेंडशिप डे",
    "किस हद तक जाना है ये कौन जानता है\nकिस मंजिल को पाना है ये कौन जानता है\nदोस्ती के दो पल जी भर के जी लो\nकिस रोज़ बिछड जाना है ये कौन जानता है\nहैप्पी फ्रेंडशिप डे",
    "ज़िन्दगी वीरान होती है\nअकेले हर राह सुनसान होती है\nएक प्यारे से दोस्त का होना ज़रूरी है\nक्योंकि उसकी दुआओ से हर मुश्किल आसान होती है\nफ्रेंडशिप डे की हार्दिक शुभकामनायें",
    "दोस्ती अच्छी हो तो रंग़ लाती है\nदोस्ती गहरी हो तो सबको भाती है\nदोस्ती नादान हो तो टूट जाती है\nपर अगर दोस्ती अपने जैसी हो\nतो इतिहास बनाती है",
    "कोन कहेता है की दोस्ती बराबरी वालो में होती है\nसच तो ये है की दोस्ती में सब बराबर होता है",
    "दोस्तों की दोस्ती में कभी कोई रूल नहीं होता है\nऔर ये सिखाने के लिए, कोई स्कूल नहीं होता है",
    "दोस्ती में ना कोई वार, ना कोई दिन होता हैं,\nये तो वो एहसास है जिसमे बस यार होता हैं|",
    "Kabhi kabhi dosti me b duriya aa jati h\nPhir b succhi dosti dilo ko milati hain..\nVoh dost hi kya jo kabhi naraj na ho….\nPar succhi dosti hi dosto ko manati hai",
    "दोस्त दिल की हर बात समझ जाया करते हैं\nसुख दुःख के हर पल में साथ हुआ करते है\nदोस्त तो मिला करते है तक़दीर वालो को\nमिले ऐसी तक़दीर हर बार हम दुआ करते है\nहैप्पी फ्रेंडशिप डे",
    "दोस्त दिल की हर बात समझ जाया करते हैं\nसुख दुःख के हर पल में साथ हुआ करते है\nदोस्त तो मिला करते है तक़दीर वालो को\nमिले ऐसी तक़दीर हर बार हम दुआ करते है",
    "*****\nदोस्ती भी क्या गज़ब की चीज़ होती है\nमगर ये भी बहुत कम लोगों को नसीब होती है\nजो पकड़ लेते है ज़िन्दगी में दामन इसका\nसमझ लो के जन्नत उनके बिलकुल करीब होती है\nफ्रेंडशिप डे की हार्दिक बधाई",
    "दोस्ती करो तो धोखा मत देना\nकिसी को आँसुओ का तोहफा मत देना\nदिल से रोये कोई तुम्हे याद करके\nऐसा कभी किसी को मौका मत देना\nहैप्पी फ्रेंडशिप डे",
    "ऐ बारिश जरा थम के बरस\nजब मेरा यार आए तो जम के बरस\nपहले न बरस कि वो आ न सके\nफिर इतना बरस कि वो जा न सके\nहैप्पी फ्रेंडशिप डे",
    "कोई इतना चाहे तो बताना\nकोई इतने नाज तुम्‍हारे उठाए तो बताना\nदोस्‍ती तो हर कोई कर लेगा तुमसे\nकोई हमारी तरह निभाए तो बताना\nहैप्पी फ्रेंडशिप डे",
    "हर कदम पर इम्तहान लेती है जिंदगी\nहर वक्‍त नया सदमा देती है जिंदगी\nहम जिंदगी से शिकवा कैसे करें\nआखिर आप जैसे दोस्‍त भी तो देती है जिंदगी\nफ्रेंडशिप डे की हार्दिक बधाई",
    "तुफान में कश्‍तियों को किनारे भी मिल जाते हैं\nजहान में लोगों को सहारे भी मिल जाते हैं\nदुनिया में सबसे प्‍यारी है जिंदगी\nकुछ आप जैसे दोस्‍त जिंदगी से भी प्‍यारे मिल जाते हैं\nफ्रेंडशिप डे की हार्दिक बधाई",
    "कुछ सालों बाद न जाने क्‍या समां होगा\nन जाने कौन दोस्‍त कहां होगा\nफिर मिलना हुआ तो मिलेगें यादों में\nजैसे सूखे गुलाब मिलते हैं किताबों में\nहैप्पी फ्रेंडशिप डे",
    "Kyun muskilo mein sath dete hain dost\nKyun gumo ko baant lete hain dost……\nNa rishta khun ka, na hi riwaz se bandha\nFir bhi Zindagi bhar ka sath dete hai dost",
    "Aksar jimmedariya majbur kar deti h apna shehar chodne ko\nVarna kon bachpan k sathi aur apno k bina jeena nahi chahta",
    "एक बात हमेशा याद रखना दोस्तों\nढूंढने पर वही मिलेंगे जो खो गए थे\nवो कभी नहीं मिलेंगे जो बदल गए है",
    "लोग पूछते हैं इतने गम में भी खुश क्युँ हो\nमैने कहा दुनिया साथ दे न दे.. मेरा दोस्त तो साथ हैं",
    "लोग रूप देखते है ,हम दिल देखते है\nलोग सपने देखते है हम हक़ीकत देखते है\nलोग दुनिया मे दोस्त देखते है\nहम दोस्तो मे दुनिया देखते है",
    "सच्चे दोस्त हमे कभी गिरने नहीं देते\nना किसी कि नजरों मे, ना किसी के कदमों मे",
    "Dost dil ki har baat samajh jaya karte h,\nDukh sukh k har pal mein sath hua karte h\nDost toh mila karte hain taqdeer walo ko,\nMile aisi taqdeer hr bar hume dua karte h",
    "आसमान हमसे नाराज हैं\nतारों का गुस्सा भी बेहिसाब है\nमुझसे जलते हैं ये सब क्योंकि\nचाँद से बेहतर दोस्त\nजो मेरे साथ हैं\nहैप्पी फ्रेंडशिप डे",
    "सच्ची है मेरी दोस्ती आजमा के देखलो\nकरके यकीं मुझपे मेरे पास आके देखलो\nबदलता नहीं कभी सोना अपना रंग\nजितनी बार दिल करे आग लगा कर देखलो\nहैप्पी फ्रेंडशिप डे",
    "दोस्ती अच्छी हो तो रंग लाती है\nदोस्ती गहरी हो तो सबको भाती है\nदोस्ती नादान हो तो टूट जाती है\nपर अगर दोस्ती अपने जैसी हो\nतो इतिहास बनाती है\nहैप्पी फ्रेंडशिप डे",
    "ना रहे कोई गिला इस क़दर वफ़ा देंगे\nआपकी एक ख़ुशी की खातिर आँसू तक बहा देंगे\nकभी ना भूलेंगे आपकी दोस्ती को हम\nदूर रहकर भी आपको दिल से दुआ देंगे\nफ्रेंडशिप डे की शुभकामनायें",
    "सबकी जिंदगी में खुशिया देने वाले\nमेरे दोस्त की जिंदगी में कोई गम ना हो\nउसको मेरे से भी अच्छा दोस्त मिले तभी\nजब दुनिया में हम ना हो\nहैप्पी फ्रेंडशिप डे",
    "क्यूँ मुश्किलों में साथ देते हैं दोस्त\nक्यूँ गम को बाँट लेते हैं दोस्त\nन रिश्ता खून का न रिवाज से बंधा है\nफिर भी ज़िन्दगी भर साथ देते हैं दोस्त\nहैप्पी फ्रेंडशिप डे",
    "शायद फिर वो तक़दीर मिल जाये\nजीवन के वो हसीं पल मिल जाये\nचल फिर से बैठें वो क्लास कि लास्ट बैंच पे\nशायद फिर से वो पुराने दोस्त मिल जाएँ\nहैप्पी फ्रेंडशिप डे",
    "ए सुदामा\nमुझे भी सिखा दें\nकोई हुनर तेरे जैसा,\nमुझे भी मिल जायेगा\nफिर कोई दोस्त कृष्ण जैसा।",
    "मुझसे एक दोस्त नहीं बदला जाता,\nचाहे लाख दूरी होने पर\nलोगों के तो भगवान तक बदल जाते हैं\nएक मुराद पूरी ना होने पर",
    "अच्छा दोस्त ज़िन्दगी को जन्नत बनाता है\nइसलिए मेरी कदर किया करो\nवरना फिर कहते फिरोगे\nबहती हवा सा था वो यार हमारा था वो कहाँ गया उसे ढूढो",
    "अपनी दोस्ती का बस इतना सा उसूल है\nज़ब तू कुबूल है तो तेरा सब कुछ कुबूल है",
    "मेरे “शब्दों” को इतने ध्यान से ना पढ़ा करो दोस्तों\nकुछ याद रह गया तो.. मुझे भूल नहीं पाओगे",

    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shayari List",
          style: Theme.of(context).appBarTheme.textTheme.headline1,
        ),
      ),
      body: SafeArea(
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return GestureDetector(
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
                                    // 40 / 8.96 = 4.46
                                    BorderRadius.all(Radius.circular(
                                        4.46 * SizeConfig.widthMultiplier))),
                            child: ListTile(
                              leading: Icon(
                                Icons.brightness_1,
                                color: Theme.of(context).primaryIconTheme.color,
                              ),
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
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) =>
                                  ShayariDetailPage(data[index], index)));

                      facebookAppEvents.logEvent(
                        name: "Shayari List",
                        parameters: {
                          'clicked_on_shayari_index': '$index',
                        },
                      );
                    },
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
