import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SideNav extends StatefulWidget {
  @override
  _SideNavState createState() => _SideNavState();
}

class _SideNavState extends State<SideNav> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        UserAccountsDrawerHeader(
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage('https://bit.ly/30dgCrH'),
          ),
          accountEmail: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                '@MOB101',
                style: TextStyle(color: Colors.black.withAlpha(160)),
              ),
              Container(height: 5.0,),
              Row(
                children: <Widget>[
                  Text(
                    '78 followers',
                    style: TextStyle(color: Colors.black.withAlpha(160)),
                  ),
                  SizedBox(width: 10.0,),
                  Text(
                    '3 following',
                    style: TextStyle(color: Colors.black.withAlpha(160)),
                  )
                ],
              )
            ],
          ),
          accountName: Text(
            'Baffour Kusi Frimpong',
            style: TextStyle(
              color: Colors.black.withAlpha(160),
              fontWeight: FontWeight.w900
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.transparent
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.perm_identity),
                  title: Text('Profile'),
                  onTap: (){},
                ),
                ListTile(
                  leading: Icon(Icons.list),
                  title: Text('Lists'),
                  onTap: (){},
                ),
                ListTile(
                  leading: Icon(Icons.bookmark_border),
                  title: Text('Bookmark'),
                  onTap: (){},
                ),
                ListTile(
                  leading: Icon(FontAwesomeIcons.bolt),
                  title: Text('Moments'),
                  onTap: (){},
                ),
                Divider(),
                ListTile(
                  onTap: (){},
                  title: Text('Settings and privacy'),
                ),
                ListTile(
                  onTap: (){},
                  title: Text('Help center'),
                )
              ],
            ),
          ),
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.lightbulb_outline),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.qrcode),
              onPressed: (){},
            )
          ],
        ),
        Container(height: 9.0,)
      ],
    );
  }
}
