import 'package:facebook_app_events/facebook_app_events.dart';
import 'package:flutter/material.dart';

import 'utils/SizeConfig.dart';
import 'MessageDetailPage.dart';

class MessagesList extends StatefulWidget {
  String type;
  MessagesList({this.type});
  @override
  _MessagesListState createState() => _MessagesListState(type);
}

class _MessagesListState extends State<MessagesList> {
  String type;
  _MessagesListState(this.type);

  static final facebookAppEvents = FacebookAppEvents();

  var data;

  @override
  Widget build(BuildContext context) {
    if (type == '1') {
      data = [
        "It’s nice to have people who check up on you. Thank you for being that kind of person in my life. Happy Friendship Day.",
        "A best friend is someone who knows the rhythm of your heart and is ready to tune his own heart at the same rhythm. Happy friendship dear best friend!",
        "Friends are more like family and you guys are my heart. Happy friendships day my best friends, I love you! May we always be like this.",
        "Remember when we met for the first time, we bitched about each other and we gossip about others together. Happy friendships day!",
        "Cheers to friendships day, to us and to many more years to come we are going to celebrate it together. Love you friends, blessed to have you all!",
        "It takes a lifetime to find a person like you in this twisted world. I felt lucky right at the moment I met you. But having you as a best friend is way more than I expected. I wish you a happy friendship day!",
        "A best friend can know what you’re thinking just by taking a quick glance at your face.",
        "A real friend will never fall through the cracks.",
        "True friends will tell you what you need to hear – not what you want to hear.",
        "Best friends are the people who are sad for your sadness and truly happy for your happiness.",
        "With time our friendship has grown stronger. May we never part. Happy Friendship Day!",
        "With good friends like you around, life becomes a lot more fun. Happy Friendship Day!",
        "I am lucky to have such a wonderful friend like you. Happy Friendship Day, buddy!",
        "My heart and your heart are very old friends.",
        "Good friends are those who bring out the very best in you – not the stress in you.",
        "Friends may walk into your life by accident, but they stick around on purpose.",
        "Best friends are the perfect pain killers, and they only have two ingredients: sharing and caring.",
        "Best friends make your problems their problems just so you don’t have to face them alone.",
        "To my best friend: as long as we have each other, we’ll always be okay.",
        "Our friendship isn’t a big thing; it’s a million little things.",
        "On such a special occasion, let’s take an oath that no matter what life unfolds before us, no matter how difficult time gets for us, we will always be a best friend to each other. Happy friendship day dear friend.",
        "You are not just a best friend but also a brother to me. I may not always express my feelings, but I do care a lot for my best friend. Happy friendship day!",
        "Let’s put aside all the little problems between us and let’s embrace each other with the same smile and the same feelings of eternal friendship. Because, my best friend, today is friendship day!",
        "A day without you all feels like the longest day of my life and today I only wish to be with you guys every day. Happy friendships day!",
        "To the most cheerful person who always boost me to grow and who always lead me my way, to you my friend, Happy Friendship Day!",
        "For all my moods, you fit in! You are the one who I can count on my bad days, my good days, and my every time mood. Happy Friendship Day!",
        "A friend is always that guide when we look up to for all kind of helps formal or informal and trust me you give the best advised. Wishing you happy friendship day!",
        "To my friend who always try to become a teacher and has forgotten earlier in our school days you were a cheater. Happy friendships day!",
        "Very few people get true friends. Luckily, I am one of those few people. Happy Friendship Day, buddy!",
        "One of the best gifts of my life is having a true friend like you. Happy Friendship Day, pal!",
        "True friends are those who stand by each other in times of need. Happy Friendship Day!",
        "A true friend will not judge you. He will stand by you no matter what. Happy Friendship Day!",
        "At times you drive me wild, but it is only in your company that I feel happy. Happy Friendship Day!",
        "Friends like you stay in the heart forever and their memories never fade away. Happy Friendship Day dear best friend. Missing you a lot!",
        "No one can make me feel so comfortable as you do. I have everything in this life because I have a friend like you. Happy Friendship Day!",
        "The greatest gift of life is a true friend who understands the real YOU. I feel grateful to live because it gave me a friend like you! Happy Friendship Day!",
        "A true friend never waits for your permission to enter into your life and make it beautiful. He appears all on a sudden and wins you over even before you know it. Happy Friendship Day!",
        "God has been so generous to me by giving me such a friend like you. So, for me, this friendship day is not only a day to celebrate our friendship but also a day to be thankful to God for the gift.",
        "You always bring out the best in me. I am at my best when I am with you. I do my best when I’m with you. Thank you for everything. Happy Friendship Day!",
        "It is tough to find trustworthy friends. I am so lucky to have found you. Happy Friendship Day!",
        "May our friendship last till the very end. Wishing you a very happy Friendship Day!",
        "I have many friends, but you are my best friend. Wishing you a very happy Friendship Day.",
        "People do not just meet and end up being best friends. It requires two independent minds to think alike and two beautiful souls to share the same road in life. Happy friendship day 2020!",
        "After another wonderful year of friendship, this day has come yet again to remind us how much we mean to each other. Happy friendship day to my dear best friend!",
        "You may not be the nicest person in this world. But to me, you are the most wonderful person and the most amazing best friend in this world. Wishing you all the best on this occasion.",
        "My best friend, you have always taken care of me and brought out the best in me. Here’s to celebrate all the years to come! Happy Friendship Day!",
        "Your existence makes my life easy and stress-free! Thank you for always walking by my side and helping me in every step. Happy Friendship Day!"
      ];
    } else if (type == '2') {
      data = [
        "Our friendship will never be broken, nor it will fade away. We both have stood the test of time and will remain friends forever. Happy Friendship Day dear!",
        "I never thought my best friend would be a girl. But now I know, no one could ever be a better friend of me than you. Happy Friendship Day!",
        "Dearest friend, a female friend is the one you can talk bullshit to and you are my always go to person. Happy friendships to you!",
        "Well, my girlfriend will always be happy from me as being with you taught me the difference between pink, rose pink and pastel pink. Happy friendships day!",
        "Friendship does have Sunday or Monday, weekend or weekday. It remains fresh, always and ready for you.",
        "Only after getting you as a friend, I understood, why it is said that friendship is the best relationship in this world.",
        "We were made to be each other’s best friend. It doesn’t matter how far we are; we will always be in each other’s heart. Happy Friendship Day!",
        "A friend like you is a precious gem that only the fortunate ones can find. I want our friendship to last forever and ever!",
        "I have not found a better friend than you. I have never met a better person than you. Your friendship means a lot to me. Happy Friendship Day!",
        "You will always be my companion being in the college project or office work being at my home party or my club issues. Happy friendships day to you beautifu!",
        "You are not just a beautiful girl but a beautiful soul and my days with you have taught me a lot. Happy friendships day darling!",
        "You are a true friend indeed, thanks for doing all the favors and supporting me ever.",
        "I hate studying, but love to go to school. You know why, just to see my friend who is so cute.",
        "Day or night, Monday or Sunday, with you my friend, everyday is a fun day.",
        "You are an angel sent directly from God to guide me in my difficult times. You are the sweetest, coolest and loveliest female friend I have ever had. Happy friendship day dear.",
        "The best thing in the world is probably having a girl as a best friend. It feels so much easy to express myself to you. This special day is only for you!",
        "The only person in this world that understands me more than even myself is you. I never thought I will find my bestie in a girl. Long live our friendship!",
        "As beautiful as you are, you have also made our friendship a collection of beautiful moments. It’s a blessing to have you as a best friend. You will always be loved and respected. Happy friendship day!",
        "When I first met you, it was like meeting another person with an attractive face. But when I got to know you, I found there’s a beautiful soul hiding beneath the outer beauty! I am lucky that you are my best friend!",
        "My life is awesome because you are in it. This special day is to remind you that I am grateful to you for all the greatest moments of my life. Happy friendship day!",
        "You fill my days with colors of joy and happiness. On this very special day, I wish to do something special for you too! But before all that I want to wish you a very happy friendship day!",
        "I may not become the perfect friend for you, but for me, I could never find a friend more perfect than you. You have made our friendship great! Happy friendship day to you!",
        "I have found not only a reliable friend in you but also a caring sister who has loved me and appreciated me unconditionally. Happy Friendship Day!",
        "My loving friend, Happy Friendship Day! Thank you for always having my back and guiding ways for me. Here’s to girl power and eternal friendship!",
        "My supergirl, you never fail to amaze me with your high spirit, charisma, and boldness. I am so proud to be your friend! Happy Friendship Day to you!"
      ];
    } else if (type == '3') {
      //"Friendship wishes for Girlfriend":

      data = [
        "You know before being in a relationship one is always a friend and this friendship of ours if forever girlfriend. Happy friendships day!",
        "Relationships might break but friendships are forever. Happy friendships day dearest girlfriend, you will always be my first.",
        "Wishing you a very happy friendships day my dearest girlfriend, may you always be able to find a right friend who would always be there for you.",
        "Happy friendships day to my beautiful girlfriend, I wish god always makes me your friend and then boyfriend. I love you!",
        "Do you know what makes our bonding stronger, its not the trust or love, but the bond of friendship.",
        "Promise me, even if we hurt each other, we will not break our friendship bond.",
        "Now, when you have become my girlfriend, I want to say you will always be my best friend.",
        "Let’s make a promise that we will never break the friendship and trust between us in any case.",
        "A good friendship is not those that demands, but it is those that understands before one demands."
      ];
    } else if (type == '4') {
      //"Friendship wishes for Funny":

      data = [
        "On this day, I promise to you that I will never let become lonely in life. I will keep disturbing you like I have been doing since the first day of our friendship!",
        "A good friend will always encourage you to move on in life. But a best friend will help you move a dead body and then encourage you to move on in life. Happy Friendship Day!",
        "The day our friendship started was the day I waved goodbye to my sanity. But sometimes when I’m with you, I feel like I was born insane! Happy Friendship Day!",
        "I always wanted a friend who would be just as much weird as me, but now it feels like I was a bit too weird to be tolerated. Anyway, happy friendship!",
        "From watching Friends to being one is an amazing part of our story I would always love to talk about. Happy friendships day guys!",
        "You clearly describe Joey from friends as you never share your food. Happy friendships day mate, I would love to share my pizza with you!",
        "Mom gave me five reasons to breakup withu, you known what I did then, I gave her 10 reasons to be with u.",
        "I am there to help you anytime, but not in the night, early morning and afternoon.",
        "The force of gravity is only partially responsible for bringing us together. I thank my lucky stars for everything. Happy friendship day!",
        "I could do a million things to make your days special but what kind of a friend makes me if I don’t ask you for treat every day. Happy friendships day!",
        "Well no more pinky promises to you we are grown up and so is our friendships and it would pinky pink promises, happy friendships day dear!",
        "You have been with me in all stupid things that happened to me, now I wonder if those incidents were because of u!",
        "You know why you are my best friend? Coz only you are stupider than me.",
        "You know what, my parents say, ur friend has spoiled you. But sadly! They don’t know who has done what.",
        "You have grabbed hold of my life like an octopus in the face. But I guess that’s what a true friend does. Wishing you a very Happy Friendship Day dear!",
        "Our friendship is like Spaghetti and meatballs. We go well together. Happy friendship day!",
        "Happy friendship day. Today we are going to pretend like the most amazing friends ever to each other and forget everything about being just two random vagabonds.",
        "Since I made friends with you, I have come to realize that life is more enjoyable with a living cartoon around you. However, let’s make this friendship day great!",
        "It’s friendship day today and you are still alive to celebrate this day with me. How lucky you are! I really hope I won’t kill you before the next friendship day! Sending you to love anyway!",
        "It’s another friendship day for both of us to go back in the memory lane and find out what mischiefs are missing there. So, we can add them to this coming year! Happy friendship day!",
        "I am sending this message not because you are my best friend but because if I don’t do this you’ll knock me in the face. Happy friendship day!",
        "Friendship is something that cannot be seen but felt. Thank god! because it would be so hard to see a stupid face and then make a friendship. By the way, happy friendship day!",
        "Make friendship with dumb people and feel superior all the time. That’s what I did when I first met you. Happy friendship day!",
        "I envy you because you got to meet such a wonderful person like me. Truly, God has blessed you a lot in life. Anyway, happy friendship day!",
        "My buddy, much to your dismay, you are stuck with me for the rest of your lives, so stop ignoring my texts! Happy Friendship Day to you!",
        "I’m glad that you are in my life because your kind nature and sweet gestures have started to rub off on me too! So Happy Friendship Day!",
        "Dear partner-in-crime, I could have never pulled off the pranks without you, so thank you for providing me with mental support! Happy Friendship Day!"
      ];
    } else if (type == '5') {
      //"Friendship wishes for Cute":

      data = [
        // Cute Friendship

        "Dearest friend, our friendship is more than late night talks and late night walks you are my shoulder to cry on. Happy friendships day to my cutest friend!",

        "You look super cute when you are angry and when you cry. To my cutest friend happy friendships day, love you to the moon and back!",

        "Remember the days when college canteen was our favorite spot and now office canteen is we grew up together. Happy friendships day to my cute friend.",

        "I worried the very first of my school and then I met you as if god wanted us to meet. Happy friendships day to my cutest friend, love you!",

        "My girlfriend knows every story of my life, but my friend these stories has got created coz of u.",

        "Your are my friend coz, I never feel like saying sorry to you even on my biggest mistake.",

        "One friendship makes the life sweet and full of memories. And I have so many friends, imagine!",

        "Our friendship is different and no one can understand that, except you and me.",

        "My mom says, you have spoiled me, but only we know that no one can spoil us.",

        "I was an innocent being..then my best friend came along",

        "Happiness is being married to your best friend",

        "Yes she’s annoying but I love her ??",

        "I looked at him as a friend until I realized I loved him",

        "She is my Best Friend. You break her heart; I will break your face.",

        "There’s no friend like someone who has known you since you were five",

        "Hanging with old friends and saying “Remember When..”",

        "Happiness is hanging out with childhood friends",

        "Happiness is meeting an old friend after a long time and feeling that nothing has changed",

        "Happiness is meeting up with old friends after a long time apart",

        "Friends don’t let friends do silly things alone",

        "If your friends don’t make fun of you, they are not really your friends",

        "Good friends don’t let you do stupid things alone",

        "Things are never quite as scary when you have a best friend",

        "A friend is someone who thinks you’re a good egg even though you’re slightly cracked!",

        "A friend doesn’t go on a diet because you are fat",

        "Friends buy you lunch. Best friends eat your lunch.",

        "Never let your best friends get lonely..keep disturbing them..!!",

        "I love that our effortless friendship fits perfectly with my laziness",

        "You don’t have to be crazy to be my friend. I’ll train you.",

        "Good times & Crazy friends make the best memories",

        "Friends Are Born, Not Made.",

        "Love Is Blind; Friendship Closes Its Eyes.",

        "The Only Way To Have A Friend Is To Be One.",

        "I Get By With A Little Help From My Friends.",

        "Every Person Is A New Door To A Different World.",

        "Friendship Is Like Money, Easier Made Than Kept.",

        "The Love Of My Life Is The Love Between Friends.",

        "Everyone Is A Friend, Until They Prove Otherwise.",

        "Fate Chooses Our Relatives, We Choose Our Friends.",

        "Friendship Is A Single Soul Dwelling In Two Bodies.",

        "The Language Of Friendship Is Not Words But Meanings.",

        "Do I Not Destroy My Enemies When I Make Them My Friends?",

        "My Best Friend Is The One Who Brings Out The Best In Me.",

        "A Hug Is Worth A Thousand Words. A Friend Is Worth More.",

        "My Best Friend Is The One Who Brings Out The Best In Me.",

        "Am I Not Destroying My Enemies When I Make Friends Of Them?",

        "Friends And Good Manners Will Carry You Where Money won’t Go.",

        "Friends Show Their Love In Times Of Trouble, Not In Happiness.",

        "A Friend Is Someone Who Knows All About You And Loves You Anyway!",

        "Friendship Is Always A Sweet Responsibility, Never An Opportunity.",

        "A True Friend Is One Who Knows All About You And Likes You Anyway.",

        "In Prosperity Our Friends Know Us; In Adversity, We Know Our Friends.",

        "Love Is The Only Force Capable Of Transforming An Enemy Into Friend.",

        "Your Friend Is The Man Who Knows All About You, And Still Likes You.”",

        "There Is Nothing On This Earth More To Be Prized Than True Friendship."
      ];
    } else if (type == '6') {
      //"Friendship wishes for Thank you":

      data = [
        "You can have a lot of friend in life, but there is only one friend who can make a big difference in your life. You are that friend for me. Thank you for everything!",
        "You are a perfect example of a loving and caring friend. Your friendship has given me everything good in life. Thank you, Happy friendship day.",
        "Without you, no one could tolerate me for so long. Thank you for being a real friend. I am so proud of having a friend like you!",
        "You have always been a faithful friend who no matter what happened, never gave up my side. Thank you for being such a great friend. Happy Friendship Day!",
        "I love you and respect you not for being a true friend of mine, but for the kind of person you are. Your kind is really so rare nowadays. Thank you for being my friend!",
        "You set my life to the right track with the warmth of your friendship. I am so grateful to you for everything. Thank you, my friend!",
        "You showed me how a true friend behaves, how he loves and how he cares for others. Thank you for being the perfect kind of friend anyone could imagine.",
        "You deserve a big thank you for being true and being honest! I have learned so many good things from you. You are truly one of a kind!",
        "Dear friend, wishing you a Happy Friendship Day! Thank you for having faith in me and picking me up in my darkest days. Take my hugs!",
        "My lovely friend, you are the guardian angel I needed in my life! Thank you for always being there to help me out. Happy Friendship Day!"
      ];
    } else {
      //"Friendship wishes for All":

      data = [
        //"Happy Friendship Day Wishes"

        "You are everything that a true friend can be. You are the most precious gift from God. I wish that we remain best friends for the rest of our life. Wishing you a very happy friendship day!",

        "True friendship cannot be found, it has to be earned. Your friendship is the most valuable thing for me because I have earned it. Happy Friendship Day!",

        "There comes a point in your life\nwhen you realize who really matters,\nwho never did, and who always will.\n“Happy Friendship Day”",

        "Distance never separates any relation\nTime never build any relation.\nIf Feelings are True From Heart,\nThen Friends are always ‘Friends’ forever.\nHappy Friendship Day!!",

        "FRIENDSHIP isn’t how U for getting but how U forgiving,\nNot how U listen but how U UnderStand,\nNot what U see but how U feel,\nand not how U Let Go but how U hold on!!!\nHAPPY FRIENDSHIP DAY!!",

        "Friendship is like a little more of trust,\na little less try,\na little more of a laugh,\nand a little less of cry,\na little more of “WE” and a little less of “I”.\nWish u Happy Friendship Day!!",

        "Friendship is the purest of all relation. If you ever find a friend who is true and honest, be thankful and don’t ever let him go. Happy Friendship Day to all!",

        "It’s better to walk in the dark with a friend than to walk in the light alone.",

        "Nothing on earth is more valuable than true friendship.",

        "Some people are so special in our lives that it’s hard to imagine existing in a universe without them. Happy friendship day, my friend!",

        "Happy friendship day. You mean a lot to me. Thanks for being the shoulder I can always depend on.",

        "Friends are just like angels. They lift us up when our fragile wings forget how to fly.",

        "Friendship is a little more trust,\nA little less try,\nA little more laugh,\nAnd a little less cry,\nA little more WE and a little less I.\nHappy Friendship Day  !",

        "Good Friendship Stands The Test Of Time.\nIt Is Unbreakable In Spite Of The Seasons That Life Presents.\nMy Friend And Am So Glad To Have You.\nHappy Friendship Day",

        "A good friend is like a computer,\nHe enters in your life,\nSave himself in your heart,\nFormats all your troubles\nAnd never delete you from his heart.\nHappy Friendship Day",

        "Flower remembers bees,\nFish remembers water,\nTree remembers the rain,\nAt this moment I remember you!\nTo say happy friendship day to U!",

        "A best friend knows what you’re saying even if you’re not talking.",

        "Nothing beats the stomach aches from laughing way too hard with great friends.",

        "Hey bestie, Happy Friendship Day! You are one of the kindest, funniest, and most helpful one I’ve ever met. Let’s stick to each other forever!",

        "A good friendship is that someone always wants to hold whether in their dark times or light because you my mate are my happy place. Happy friendships day!",

        "I had always wanted a friend who would understand, be with me when no one else is and you are a one good friend. Happy friendships day!",

        "I was weak sometimes, I was doubled strong when I have a good friend like you beside me. Happy friendships day buddy!",

        "Cheers to all the craziest and stupidest things that we have done together and here promising many more to come. Happy friendships day to a good friend!",

        "You are the friend I never want to get cut off. You too forget me not",

        "Our parents know us, but friend is the one who understand us. This bonding start, where others end.",

        "True friends are perfectly comfortable sitting with each other in silence.",

        "It’s the friends you know you can call up at 4 AM that really matter.",

        "How much love is in a friend? That depends on how much you give them.",

        "Friends may not be family by blood, but they are the family you choose.",

        "A real friend gives you the freedom to be yourself.",

        "Friends are one single mind in two separate bodies.",

        "True love is rare, but true friendship is even rarer.",

        "A real friend will never get in your way – except when you’re falling down.",

        "A true friend asks how you are, and waits to hear the answer.",

        "Best friends can walk in opposite directions, but still be side by side.",

        "Silly pictures and fun times. We’re sisters at heart, and we’re partners in crime.",

        "Friends cherish each other’s hopes and are kind to each other’s dreams.",

        "A real friend is someone who loves you despite knowing all of your deep, dark secrets.",

        "The very sight of the word ‘friendship’ warms the heart and soothes the soul.",

        "Old friends take a long time to grow. Friendship is a fruit that’s slow to ripen.",

        "A man with many friends is a man with no friends at all.",

        "We don’t lose friends as we get older; we learn who our real ones are.",

        "You can always judge a person’s character by the friends he keeps.",

        "Friendship is the promise made in the heart, and this promise remains unchangeable and unbreakable",

        "Friendship is a relationship that does not work on funda of give and take, it works on giving and forget.",

        "Friendship is the only relationship that we chose, that is why, it has least expectations and more bonding.",

        "I will never be lonely, because I have such a wonderful friend like you. Happy Friendship Day!",

        "May the bonds that we share continue to grow stronger. Happy Friendship Day!",

        "Your friendship is the greatest gift of my life. Wishing you a very happy Friendship Day!",

        "You met me as a stranger, but with time became a part of my life. Happy Friendship Day!",

        "life become joyful if there are wonderful friends like you around. Happy Friendship Day!",

        "Thanks for helping me out when I needed you the most. Wishing you a very happy Friendship Day.",

        "It is hard to find a true friend. So, I am damn lucky to have found a true friend like you. Happy Friendship Day!",

        "I have lots of friends but it is only who who understands and stands by me. Happy Friendship Day, buddy!",

        "Friendship is what makes this world a better place to live. Happy Friendship Day!",

        "Happy friendship day! I pray that our beautiful friendship always stays the same.",

        "Happy Friendship Day, my buddy! You are someone I can count on in every step of my life. May our beautiful friendship lasts forever!",

        "Your Friendship Is A Special Gift Generously Given…Happily Accepted And Deeply Appreciated.",

        "For being a good sport for all these years, I just want to wish you a Happy Friendship Day!",

        "Make friendship with dumb people and feel superior all the time. That’s what I did when I first met you. Happy friendship day!",

        "Roses are red, violets are blue, and I am truly blessed to have a best friend like you. Happy Friendship Day!",

        "Best friends are more like family. Thank you for being that and more. Happy Friendship day!",

        "You may be far, but you are always right here in my heart. I miss you dearly and on this Friendship day, know that you are on my mind.",

        "My best friend is the one who brings out the best in me.",

        "Anything is possible when you have the right people there to support you.",

        "It’s not that diamonds are a girl’s best friend, but it’s your best friends who are your diamonds.",

        "A loyal friend laughs at your jokes when they’re not so good, and sympathizes with your problems when they’re not so bad.",

        "Life is an awful, ugly place to not have a best friend.",

        "I have no words to describe how I feel to have a friend like you. Thank you for being my best friend in life. Happy Friendship Day!",

        "Sometimes, I forget to say hi,\nI even miss replying,\nmy message doesn’t reach you,\nBut, it doesn’t mean that I forget you,\nI just giving you time to miss me!\n“Happy Friendship Day”",

        "86,400 seconds makes a day,\n24 sweet hours makes a day,\n7 sweet days makes a week,\nBut one sweet friend like u makes a life",

        "Serious jokes\nSilly fights\nSimple sms\nSenseless speak\nSensitive feelings\nSmall angry\nMixture of all of the above is called “friendship”",

        "To be a best friend doesn’t take much,\na shoulder, an ear, some understanding,\nand not even have to say a word to\nmake you laugh/smile.\n“Happy Friendship Day”",

        "Happy friendship day. I appreciate your love, kindness, and support! Thanks for being a part of my life my friend.",

        "Thank you for never letting me do the stupid things alone. This just proves what great friend you are for me. Happy Friendship Day to you!",

        "The best thing in life is having a friend who cares, loves, and inspires you without a condition. Happy Friendship Day to all the amazing people who we call friends!",

        "Not many things in life make me happy. But you are an exception. Happy friendship day, my friend!",

        "Friendship is more expensive than anything in this world as it does not have any price tag. Happy Friendship Day!",

        "I am the friend, you will find next to you everywhere, whether it’s a good time or bad.",

        "Our friendship is a gift to both of us. Let’s make a promise, this bonding will never break.",

        "I feel proud, I am your friend. People who make fun of you, does know that you're an asset.",

        "I hate studying, but love coming to college, coz you are there my friend.",

        "My dear friend, I have learned what true friendship is because of you. Thank you for being a real blessing for me! Happy Friendship Day!",

        "Sometimes angels from heaven come down on earth to make our lives funnier and enjoyable. We call them friends. Today, I’m wishing Happy Friendship Day to all those angels!",

        "Friends are like stars in the sky. You may not always notice them, but they are always there watching over you. Happy Friendship Day!",

        "The more friends you have in life, the more enjoyable your life becomes. So, make more friends, take care of them and live a happy life. Wishing you a Happy Friendship Day!",

        "Lucky are those who have found a soulmate in their friend. you are much more than a friend to me. You mean a lot. Happy friendship day !",

        "The heart always needs a friend.",

        "Love is the only thing that transforms an enemy into a friend.",

        "A single loyal friend is worth five thousand relatives.",

        "True friends know the real you, and still love you just the same.",

        "A true friend can see behind your mask even when you’re fooling everyone else.",

        "A friendship like ours multiplies all of the good in life and divides the evils.",

        "One of the greatest comforts of true friendships is never having to explain yourself.",

        "The greatest of all healing therapies is love and friendship.",

        "No one needs to count material wealth when they have a friend like you. You are the most wonderful friend I could ever wish for. I wish you a very happy friendship day.",

        "Happy Friendship Day, my friend! Let’s be together for a long time!",

        "You know which is the happiest moment in my life? Well, all those that I have spent with you.",

        "Whenever I see friends hugging each other. The memories our friendship gets refreshed, it was an awesome time.",

        "It’s been so long we haven’t seen each other. Let’s meet and celebrate our bonding in our unique style.",

        "Our friendship is not like seasons that changes. It is like the Sun, which remain still and spread prosperity.",

        "Can we be friends? Well, don’t say no, it’s a good deal, I have many friends and you will have me.",

        "Let’s nurture our friendship with love and care and let it grow endlessly.",

        "I am one of those lucky individuals who have gotten to experience the meaning of true friendship. Happy friendship day, buddy!",

        "No matter what I wish for you on this special day, it will not be enough to express the feelings I have for you. you always have a very special place in my heart. Happy friendship day!",

        "Thank you for being my bundle of joy. Thank you for being supportive and kind and for believing in me when no one else did. Thank you for being a friend. Happy friendship day.",

        "You are the only person on whom I can depend in times of need. Happy Friendship Day!",

        "Whether it is sunshine or rain, you have always been there for me. Happy Friendship Day!",

        "Those who are surrounded by good friends are the luckiest people in the world. Happy to have such wonderful friends like you. Happy Friendship Day!",

        "I have many friends, but none of them is as close to my heart as you are. Happy Friendship Day, buddy!",

        "I must have done something wonderful in my previous life, that is why I got such a fabulous friend like you. Happy Friendship Day!",

        "My dear friend, I am really missing you. Hope that we meet soon. Happy Friendship Day!",

        "Only the lucky ones get true friends. And, I am the luckiest one because I have you. Happy Friendship Day!",

        "Lady Luck sure favours me. That is why she made you my friend. Happy Friendship Day!",

        "Lucky to have the coolest guy in college as my best friend. Happy Friendship Day!",

        "Though you are my best friend but sometimes you also act as my mentor. Happy Friendship Day!",

        "Whenever I am in trouble you are always there by my side. You are a true friend.",

        "A friend does not walk before you so you can follow, he walks beside you so he can catch you before you fall. Happy Friendship Day !",

        "Sending warm hugs to my dearest buddy! Happy Friendship Day !",

        "A true friend is someone who gives you all the freedom to be yourself. It’s hard to find true friendship life but it’s the sweetest thing that can ever happen in your life. Happy Friendship Day!",

        "Dear friend, ever since you came into my life, you have filled my life with utter joy and happiness! Happy Friendship Day to you!",

        "Its hard to find someone who will stay with you in your hard times, someone who will help you rise up again after you fall. Fortunately for me, that person is you! You are a rare gem, my friend!",

        "There are just so many people around me but only one person that allows me to be myself is you. This special day is entirely for the person I call my best friend.",

        "Every day is special if spent with you. You make me forget what boredom is. I never thought anyone could ever touch my life in so many ways. Happy friendship day!",

        "Dear friend, thank you for always appreciating me. Happy Friendship Day!",

        "On this very special day, I want to let you know that you are my most favorite person in this world. I enjoy your company more than I enjoy myself. Happy friendship day to you!",

        "True friends will not have any reason for their friendship.\nSo it can never be broken when they don’t find that reason."
      ];
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Message List",
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
                                  MessageDetailPage(data[index], index)));

                      facebookAppEvents.logEvent(
                        name: "Message List",
                        parameters: {
                          'clicked_on_message_index': '$index',
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
