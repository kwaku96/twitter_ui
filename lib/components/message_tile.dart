import 'package:flutter/material.dart';

class MessageTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage('https://bit.ly/2z9vEDq'),
        radius: 25.0,
      ),
      title: _buildTitle(context),
      subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
      ' sed do eiusmod tempor'),
      isThreeLine: true,
      onTap: (){},
    );
  }

  Widget _buildTitle(BuildContext context){
    return Row(
      children: <Widget>[
        Text(
          'Random user',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13.0),
        ),
        Text(
          ' @random_handle',
          style: TextStyle(fontSize: 13.0),
        ),
        Flexible(child: Container(),),
        Text('13 Jul',style: TextStyle(fontSize: 13.0),)
      ],
    );
  }
}