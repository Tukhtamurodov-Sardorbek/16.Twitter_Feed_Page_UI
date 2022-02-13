import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/tweetModel.dart';

class TwitterFeedPage extends StatefulWidget {
  const TwitterFeedPage({Key? key}) : super(key: key);
  static const String id = 'twitter_feed_page';

  @override
  _TwitterFeedPageState createState() => _TwitterFeedPageState();
}

class _TwitterFeedPageState extends State<TwitterFeedPage> {
  List<Tweet> tweets = [
    Tweet(
        profilePhoto: 'assets/tweeter/img_1.png',
        userName: 'Liverpool FC',
        accountName: '@LFC',
        topic: ['Liverpool FC'],
        tweetedTime: ' · 9h',
        likedUsers: [],
        tweetPhoto: 'assets/tweeter/img_2.png',
        tweetContent: 'The Reds are back this weekend 🙌🏻',
        comments: '',
        viewsTimes: '',
        commentsNumber: '180',
        retweetNumber: '1,227',
        likesNumber: '22.9K',
        isOfficial: true,
        isFollowed: false,
        isAd: false),
    Tweet(
        profilePhoto: 'assets/tweeter/img_3.png',
        userName: 'Tom Brady',
        accountName: '@TomBrady',
        topic: ['Sports'],
        tweetedTime: ' · 10h',
        likedUsers: [],
        tweetPhoto: 'assets/tweeter/img_4.png',
        tweetContent:
            'Thank You Patriots Nation ❤️ \nI\'m beyond grateful. Love you all.',
        comments: '',
        viewsTimes: '',
        commentsNumber: '4,200',
        retweetNumber: '20.8K',
        likesNumber: '207K',
        isOfficial: true,
        isFollowed: false,
        isAd: false),
    Tweet(
        profilePhoto: 'assets/tweeter/img_5.png',
        userName: 'cortez',
        accountName: '@cxrtezs',
        topic: ['Viral Tweets'],
        tweetedTime: ' · 12h',
        likedUsers: [],
        tweetPhoto: '',
        tweetContent: 'i hate when i go out in public and the public be there',
        comments: 'Show this thread',
        viewsTimes: '',
        commentsNumber: '259',
        retweetNumber: '39.6K',
        likesNumber: '206K',
        isOfficial: false,
        isFollowed: false,
        isAd: false),
    Tweet(
        profilePhoto: 'assets/tweeter/img_6.png',
        userName: 'Spellfire',
        accountName: '@Spellfiretoken',
        topic: ['Binance Coin', 'cryptocurrency'],
        tweetedTime: ' · 18h',
        likedUsers: [],
        tweetPhoto: 'assets/tweeter/img_7.png',
        tweetContent:
            'Spellfire Airdrop \$2,000,000 \$BNB For 20,000 Participants 🎉\n\n(First Come, First Serve)\n\n✅ Each Of The Tasks Below:\n\n1.FOLLOW✅\n2.RETWEET & LIKE 💙\n3.TAG 3 FRIENDS 🙋🏻‍️\n📝 Fill In Your Binance Smart Chain Address In The Comments\n\n🔥Event Lasts Up To 20,000 Retweets',
        viewsTimes: '',
        comments: '',
        commentsNumber: '2,204',
        retweetNumber: '4,615',
        likesNumber: '4,050',
        isOfficial: false,
        isFollowed: false,
        isAd: false),
    Tweet(
        profilePhoto: 'assets/tweeter/img_8.png',
        userName: 'McDonald\'s UK',
        accountName: '@McDonaldsUK',
        topic: ['#ChickenBigMac is trending'],
        tweetedTime: '',
        likedUsers: [],
        tweetPhoto: 'assets/tweeter/img_12.png',
        tweetContent:
            'The Chicken Big Mac has landed 🐔🍔 but hurry, it\'s not around for long!',
        comments: '↗️ Promoted',
        viewsTimes: '441K views',
        commentsNumber: '184',
        retweetNumber: '205',
        likesNumber: '1,290',
        isOfficial: true,
        isFollowed: true,
        isAd: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 45,
        title: const ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: Image(
              image: AssetImage('assets/tweeter/img_10.png'),
              height: 30,
            ),
            title:
                Image(image: AssetImage('assets/tweeter/img.png'), height: 40),
            trailing: Image(
              image: AssetImage('assets/tweeter/Feature stroke icon.png'),
              color: Colors.black,
              height: 40,
            )),
        elevation: 1,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            /// Message
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                children: [
                  const Text('Your account is permanently suspended',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 32)),
                  const SizedBox(height: 10),
                  RichText(
                    text: const TextSpan(
                      text:
                          'After careful review, we determined your account broke the ',
                      style: TextStyle(
                          color: CupertinoColors.systemGrey,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Twitter Rules',
                          style: TextStyle(color: Colors.blue),
                        ),
                        TextSpan(
                          text:
                              '. Your account is permanently in read-only mode, which means you can\'t Tweet, Retweet, or Like content. You won\'t be able to create new accounts. If you think we got this wrong, you can ',
                          style: TextStyle(color: CupertinoColors.systemGrey),
                        ),
                        TextSpan(
                          text: 'submit an appeal',
                          style: TextStyle(color: Colors.blue),
                        ),
                        TextSpan(
                          text: '.',
                          style: TextStyle(color: CupertinoColors.systemGrey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(thickness: 2),
            /// Tweets
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: tweets.length,
              itemBuilder: (BuildContext context, int index) {
                return _tweet(tweets[index]);
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        items: const [
          BottomNavigationBarItem(icon: Image(image: AssetImage('assets/tweeter/img_13.png'), height: 22), label: 'Home'),
          BottomNavigationBarItem(icon: Image(image: AssetImage('assets/tweeter/img_14.png'), height: 22), label: 'Explore'),
          BottomNavigationBarItem(icon: Image(image: AssetImage('assets/tweeter/img_15.png'), height: 22), label: 'WTF?!'),
          BottomNavigationBarItem(icon: Image(image: AssetImage('assets/tweeter/img_16.png'), height: 22), label: 'Notifications'),
          BottomNavigationBarItem(icon: Image(image: AssetImage('assets/tweeter/img_17.png'), height: 22), label: 'Messages'),
        ],

      ),
    );
  }

  Widget _tweet(Tweet tweet) {
    return SizedBox(
      // padding: const EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          /// Topic
          Container(
            height: 45,
            padding: const EdgeInsets.only(left: 40, right: 5),
            child: ListTile(
              contentPadding: const EdgeInsets.only(left: 6, right: 0),
              minLeadingWidth: 0,
              leading: tweet.isAd
                  ? const Image(
                      image: AssetImage('assets/tweeter/fire.png'),
                      height: 17,
                      width: 17)
                  : const Icon(
                      CupertinoIcons.text_bubble_fill,
                      size: 17,
                      color: Color(0xff696969),
                    ),
              title: tweet.topic.length > 1
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(tweet.topic[0].toString(),
                                style: const TextStyle(
                                    color: Color(0xff696969),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),
                            Text(tweet.topic[1].toString(),
                                style: const TextStyle(
                                    color: Color(0xff696969),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),
                          ],
                        ),
                        tweet.isAd || tweet.isFollowed
                            ? const SizedBox()
                            : const Text('Follow Topic',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),
                      ],
                    )
                  : Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(top: 6),
                      child: RichText(
                        text: TextSpan(
                          text: '${tweet.topic[0].toString()} ⋅ ',
                          style: const TextStyle(
                              color: Color(0xff696969),
                              fontWeight: FontWeight.w900,
                              fontSize: 16),
                          // style:  TextStyle(color: CupertinoColors.systemGreen, fontSize: 22, fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            tweet.isAd || tweet.isFollowed
                                ? const TextSpan()
                                : const TextSpan(
                                    text: 'Follow Topic',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                          ],
                        ),
                      ),
                    ),
              trailing: const Icon(CupertinoIcons.xmark,
                  color: Colors.grey, size: 20),
            ),
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            /// Profile Photo
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(tweet.profilePhoto),
                      )),
                )),
            /// Tweet
            Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Tweet Info
                    Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: const EdgeInsets.only(right: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          /// UserName
                          Container(
                            width: tweet.userName.length > 25
                                ? MediaQuery.of(context).size.width * 0.63
                                : null,
                            padding: tweet.userName.length > 25
                                ? null
                                : const EdgeInsets.only(right: 5.0),
                            child: Text(
                              tweet.userName,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),

                          /// Official
                          tweet.userName.length > 25 || !tweet.isOfficial
                              ? const SizedBox()
                              : const Icon(CupertinoIcons.checkmark_seal_fill,
                                  color: Colors.lightBlue, size: 20),
                          tweet.userName.length > 25
                              ? const SizedBox()
                              : const SizedBox(width: 5),

                          /// Account Name
                          tweet.userName.length > 25
                              ? const SizedBox()
                              : Text(
                                  tweet.userName.length +
                                              tweet.accountName.length <
                                          MediaQuery.of(context).size.width *
                                              0.5
                                      ? tweet.accountName
                                      : '${tweet.accountName.substring(0, (MediaQuery.of(context).size.width * 0.63 - tweet.userName.length).toInt())}...',
                                  style: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500)),

                          tweet.tweetedTime.isNotEmpty
                              ? Text(tweet.tweetedTime,
                                  style: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500))
                              : const SizedBox(),
                        ],
                      ),
                      Icon(CupertinoIcons.ellipsis_vertical,
                          color: Colors.grey.shade500, size: 20)
                    ],
                  ),
                ),
                    Text(
                      tweet.tweetContent,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                    tweet.tweetPhoto.isNotEmpty ? Flexible(
                      fit: FlexFit.loose,
                      child:
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0, top: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            image: AssetImage(tweet.tweetPhoto), // fit: BoxFit.cover
                          ),
                        )
                      ),
                    ) : const SizedBox(),
                    tweet.viewsTimes.isNotEmpty ? Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(tweet.viewsTimes, style: const TextStyle(color: Color(0xff696969)))
                    ) : const SizedBox(),
                    Padding(
                      padding: const EdgeInsets.only(right: 50.0, top: 5, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              const Icon(CupertinoIcons.chat_bubble, color: Color(0xff696969), size: 22),
                              const SizedBox(width: 10),
                              Text(tweet.commentsNumber, style: const TextStyle(color: Color(0xff696969)))
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(CupertinoIcons.arrow_2_squarepath, color: Color(0xff696969), size: 22),
                              const SizedBox(width: 10),
                              Text(tweet.retweetNumber, style: const TextStyle(color: Color(0xff696969)))
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(CupertinoIcons.heart, color: Color(0xff696969), size: 22),
                              const SizedBox(width: 10),
                              Text(tweet.likesNumber, style: const TextStyle(color: Color(0xff696969)))
                            ],
                          ),
                          const Icon(Icons.share_outlined, color: Color(0xff696969), size: 22),
                        ],
                      ),
                    ),
                    tweet.comments.isNotEmpty ? Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(tweet.comments, style: TextStyle(fontSize: 17, color: tweet.comments == 'Show this thread' ? Colors.blue : const Color(0xff696969)))
                    ) : const SizedBox(),
              ],
            ))
          ]),
          const Divider(thickness: 2),
        ],
      ),
    );
  }
}
