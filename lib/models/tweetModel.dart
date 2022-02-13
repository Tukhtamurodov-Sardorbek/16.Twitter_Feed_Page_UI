class Tweet{
  late String profilePhoto;
  late String userName;
  late String accountName;
  late List<String> topic;
  late List<String> likedUsers;
  late String tweetPhoto;
  late String tweetContent;
  late String tweetedTime;
  late String commentsNumber;
  late String comments;
  late String retweetNumber;
  late String likesNumber;
  late String viewsTimes;
  late bool isOfficial;
  late bool isFollowed;
  late bool isAd;

  Tweet(
      {
        required this.profilePhoto,
        required this.userName,
        required this.accountName,
        required this.topic,
        required this.likedUsers,
        required this.tweetPhoto,
        required this.tweetContent,
        required this.tweetedTime,
        required this.commentsNumber,
        required this.comments,
        required this.retweetNumber,
        required this.likesNumber,
        required this.viewsTimes,
        required this.isOfficial,
        required this.isFollowed,
        required this.isAd,
      }
  );


}