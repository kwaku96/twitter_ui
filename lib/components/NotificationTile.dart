import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: _buildTitle(context),
      isThreeLine: true,
      subtitle: _buildSubtTitle(context),
    );
  }

  Widget _buildTitle(BuildContext context){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(width: 25.0,),
        Icon(Icons.star_border),
        SizedBox(width: 6,),
        CircleAvatar(
          backgroundImage: NetworkImage('https://bit.ly/2z9vEDq'),
          radius: 16,
        ),
        Flexible(child: Container(),),
        InkWell(
          child: Icon(
            FontAwesomeIcons.chevronDown,
            size: 14.0,
            color: Colors.black.withAlpha(120),
          ),
          onTap: (){},
        )
      ],
    );
  }

  Widget _buildSubtTitle(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left:28.0,bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(height: 5,),
          Text(
            'Random like your tweet',
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
          SizedBox(height: 10,),
          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
        ' sed do eiusmod tempor')
        ],
      ),
    );
  }
}