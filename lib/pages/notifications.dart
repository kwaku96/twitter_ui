import 'package:flutter/material.dart';
import 'package:twitter_demo/components/NotificationTile.dart';
import 'package:twitter_demo/components/tweet.dart';
import '../components/user_profile_image.dart';

class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context,innerBoxScrolled){
          return <Widget> [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              child: SliverAppBar(
                leading: Builder(
                  builder: (context)=>UserProfileImage(),
                ),
                title: Text('Notifications'),
                centerTitle: false,
                backgroundColor: Colors.white,
                forceElevated: innerBoxScrolled,
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: (){},
                  )
                ],
                bottom: TabBar(
                  tabs: <Widget>[
                    Tab(text: 'All',),
                    Tab(text: 'Mentions',)
                  ],
                ),
                floating: true,
                pinned: true,
                snap: true,
              ),
            )
          ];
        },
        body: TabBarView(
          children: <Widget>[
            _buildFirstPage(context),
            _buildSecondPage(context)
          ],
        ),
      ),
    );
  }

  _buildSecondPage(BuildContext context){
    return SafeArea(
      top: false,
      bottom: false,
      child: Builder(
        builder: (context){
          return CustomScrollView(
            slivers: <Widget>[
              SliverOverlapInjector(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context,index){
                    return TweetCard(
                      profileImage: 'https://bit.ly/2P5RRNc',
                      handle: 'random-user',
                    );
                  },
                  childCount: 2
                ),
              )
            ],
          );
        },
      ),
    );
  }

  _buildFirstPage(BuildContext context){
    return SafeArea(
      top: false,
      bottom: false,
      child: Builder(
        builder: (BuildContext context){
          return CustomScrollView(
            slivers: <Widget>[
              SliverOverlapInjector(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              ),
              SliverPadding(
                padding: EdgeInsets.all(8.0),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context,index){
                      return NotificationTile();
                    },
                    childCount: 20
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }

}

// SliverAppBar(
//   leading: Builder(
//     builder: (context)=> UserProfileImage(),
//   ),
//   title: Text('Notifications'),
//   centerTitle: false,
//   backgroundColor: Colors.white,
//   actions: <Widget>[
//     IconButton(
//       icon: Icon(Icons.settings),
//       onPressed: (){},
//     )
//   ],
//   bottom: TabBar(
//    tabs: <Widget>[
//      Tab(text: 'All',),
//      Tab(text: 'Mentions',)
//    ],
//  ),
//  pinned: true,
//  floating: true,
// ),

            
// SliverFillRemaining(
//   child: TabBarView(
//     children: <Widget>[
//       Center(child: ListView.builder(
//           itemBuilder: (context,index){
//             return NotificationTile();
//           },
//           itemCount: 10,
//         )
//       ),
//       Center(child: Text('second tab'),)
//     ],
//   ),
// )