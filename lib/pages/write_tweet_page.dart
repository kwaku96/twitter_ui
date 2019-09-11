import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WriteTweetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          _buildTweetButton(context)
        ],
      ),

      body: Column(
        children: <Widget>[
          _buildTextArea(context),
          Flexible(child: Container(),),
          _buildRowBtn(context)
        ],
      ),
    );
  }

  Widget _buildTweetButton(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
      child: RaisedButton(
        child: Text('Tweet'),
        onPressed: (){},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0))
        ),
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }

  Widget _buildTextArea(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(top:18.0,left: 8.0,right: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage('https://bit.ly/30dgCrH'),
            radius: 25.0,
          ),
          SizedBox(width: 10,),
          Flexible(
            child: Container(
              child: TextField(
                autofocus: true,
                maxLines: 5,
                decoration: InputDecoration.collapsed(
                  hintText: "What's happening ?",
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildRowBtn(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.image),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.gif),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.chartBar),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.pin_drop),
            onPressed: (){},
          ),
          Flexible(child: Container(),),
          IconButton(
            icon: Icon(Icons.add_circle_outline),
            onPressed: (){},
          )
        ],
      ),
    );
  }
}