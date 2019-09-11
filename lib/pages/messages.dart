import 'package:flutter/material.dart';
import 'package:twitter_demo/components/message_tile.dart';
import '../components/user_profile_image.dart';

class MessagesPage extends StatefulWidget {
  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          leading: UserProfileImage(),
          centerTitle: false,
          backgroundColor: Colors.white,
          title: Text('Messages'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: (){},
            )
          ],
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context,index){
              return MessageTile();
            },
            childCount: 2
          ),
        )
      ],
    );
  }
}
