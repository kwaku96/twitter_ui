import 'package:flutter/material.dart';

class UserProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage('https://bit.ly/30dgCrH'),
        ),
      ),
      onTap: (){
        Scaffold.of(context).openDrawer();
      },
    );
  }
}


