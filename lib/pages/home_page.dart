import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:twitter_demo/components/modal.dart';
import 'package:twitter_demo/local_data/tweets.dart';
import '../components/user_profile_image.dart';
import '../components/tweet.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    Modal modal = Modal();

    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          snap: true,
          floating: true,
          leading: Builder(
            builder: (context)=> UserProfileImage(),
          ),
          title: Text('Home'),
          centerTitle: false,
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.star_border),
              onPressed: ()=>modal.mainBottomSheet(context),
            )
          ],
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context,index){
              return Container(
                padding: EdgeInsets.all(0.0),
                child: TweetCard(
                  handle: localTweets[index].handle,
                  imageUrl: localTweets[index].imageUrl,
                  profileImage: localTweets[index].profileImage,
                ),
              );
            },
            childCount: localTweets.length
          ),
        )
      ],
    );
  }

  getScreams() async{
    const url = "https://europe-west2-socialmedia-ecfbe.cloudfunctions.net/api/screams";
    await http.get(url)
      .then((data)=>data.body)
      .then((data)=>jsonDecode(data))
      .then((data)=>print(data))
      .catchError((err)=>print(err.toString()));
  }

}
