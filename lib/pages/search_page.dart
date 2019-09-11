import 'package:flutter/material.dart';
import '../components/user_profile_image.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          snap: true,
          floating: true,
          backgroundColor: Colors.white,
          leading: UserProfileImage(),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: (){},
            )
          ],
          title: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.0)
              ),
              contentPadding: EdgeInsets.only(top: 10.0,bottom: 8.0,left: 15.0)
            ),
          ),
        ),
      ],
    );
  }
}
