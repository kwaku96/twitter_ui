class Tweet{
  String scream;
  String imageUrl;
  String handle;
  int likeCount;
  int commentCount;
  String createdAt;
  String profileImage;

  Tweet({
    this.imageUrl,
    this.handle,
    this.commentCount,
    this.createdAt,
    this.likeCount,
    this.scream,
    this.profileImage
  });
}


List<Tweet> localTweets = [
  Tweet(
    handle: 'Baffour Awuah',
    commentCount: 10,
    likeCount: 10,
    createdAt: '2019-08-07T03:04:33.287Z',
    scream: "What if original sin had never occurred? I think you'll "
            "find that the fantasy concept known as 'sin' is actually "
            "...",
    imageUrl: 'https://bit.ly/2WYkZd5',
    profileImage: 'https://bit.ly/2P5RRNc'
  ),
  Tweet(
    handle: 'Appiah Kubi',
    commentCount: 20,
    likeCount: 15,
    createdAt: '2019-08-07T05:04:33.287Z',
    scream: "What if original sin had never occurred? I think you'll "
            "find that the fantasy concept known as 'sin' is actually "
            "...",
    imageUrl: 'https://bit.ly/2EHRliE',
    profileImage: 'https://bit.ly/31XFSTL'
  ),
  Tweet(
    handle: 'Sam Tuga',
    commentCount: 100,
    likeCount: 50,
    createdAt: '2019-08-07T03:04:33.287Z',
    scream: "What if original sin had never occurred? I think you'll "
            "find that the fantasy concept known as 'sin' is actually "
            "...",
    imageUrl: 'https://bit.ly/33Oo2Eu',
    profileImage: 'https://bit.ly/2Z6PMp7'
  ),
  Tweet(
    handle: 'King Promise',
    commentCount: 10,
    likeCount: 10,
    createdAt: '2019-08-07T03:04:33.287Z',
    scream: "What if original sin had never occurred? I think you'll "
            "find that the fantasy concept known as 'sin' is actually "
            "...",
    imageUrl: 'https://bit.ly/2KJrmt1',
    profileImage: 'https://bit.ly/2AMaJK5'
  ),
  Tweet(
    handle: 'Mike Adriano',
    commentCount: 10,
    likeCount: 20,
    createdAt: '2019-08-07T03:04:33.287Z',
    scream: "What if original sin had never occurred? I think you'll "
            "find that the fantasy concept known as 'sin' is actually "
            "...",
    imageUrl: 'https://bit.ly/2Pkv3K3',
    profileImage: 'https://bit.ly/2KLi2oj'
  )
];