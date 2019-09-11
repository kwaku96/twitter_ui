import 'package:flutter/material.dart';

class Modal{

  mainBottomSheet(BuildContext context){
    showModalBottomSheet(
      context: context,
      builder: (context){
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 30.0,bottom: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.star_border,size: 50.0,),
                  Text(
                    'Home shows you top Tweets first',
                    style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.keyboard_tab),
              title: Text('See latest Tweets instead'),
              subtitle: Text("You'll be switched back home after you have been"
                  " away for a while"),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('View content preference'),
              onTap: (){},
            ),
            Container(height: 20.0,)
          ],
        );
      }
    );
  }

  shareBottomSheet(BuildContext context){
    showModalBottomSheet(
      context: context,
      builder: (context){
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.mail_outline),
              title: Text('Share via Direct Message'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.bookmark_border),
              title: Text('Add tweet to Bookmarks'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share via ...'),
              onTap: (){},
            ),
            Container(height: 20.0,)
          ],
        );
      }
    );
  }



}