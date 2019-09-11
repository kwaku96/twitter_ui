import 'package:flutter/material.dart';
import '../utils/fontStyle.dart';
import './modal.dart';

class TweetCard extends StatelessWidget {

  final Modal modal = Modal();
  final String imageUrl;
  final String handle;
  final String username;
  final String profileImage;

  TweetCard({
    this.imageUrl,
    @required this.handle,
    this.username,
    @required this.profileImage
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.only(top: 2.0,left: 8.0),
      margin: EdgeInsets.only(bottom: 20.0),
      constraints: BoxConstraints(
        maxHeight: height * 0.5,
        minHeight: height * 0.1
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.blue,
              backgroundImage: NetworkImage('$profileImage'),
            ),
          ),
          SizedBox(width: 8.0,),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  _buildTweetHead(
                    context,
                    name: 'king Baffour',
                    handle: '@MOBZ101',
                    timeAgo: '4m'
                  ),
                  Text(
                    "What if original sin had never occurred? I think you'll "
                    "find that the fantasy concept known as 'sin' is actually "
                    "...",
                  ),
                  imageUrl != null ?
                  Padding(
                    padding: const EdgeInsets.only(right:10.0,top: 5.0),
                    child: Container(
                      height: height * 0.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        image: DecorationImage(
                          image: NetworkImage('$imageUrl'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                  ):Container(height: 0.001,),
                  _buildInteractionPanel(context)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTweetHead(
      BuildContext context,{String name,String handle,String timeAgo}
      ){

    return Row(
      children: <Widget>[
        Text('$name',style: TextStyle(fontWeight: FontWeight.bold),),
        SizedBox(width: 3.0,),
        Text(
          '$handle .$timeAgo',
          style: TextStyle(color: Colors.black.withAlpha(90)),
        ),
        Expanded(child: Container(),),
        IconButton(
          icon: Icon(Icons.arrow_drop_down),
          onPressed: ()=> modal.shareBottomSheet(context),
          padding: EdgeInsets.all(1.0),
        )
      ],
    );
  }

  Widget _buildInteractionPanel(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(right:40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.chat_bubble_outline),
            onPressed: (){},
            color: iconDark,
            iconSize: 20.0,
          ),
          IconButton(
            icon: Icon(Icons.repeat),
            onPressed: (){},
            color: iconDark,
            iconSize: 20.0,
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: (){},
            color: iconDark,
            iconSize: 20.0,
          ),
          IconButton(
            icon: Icon(Icons.share),
            onPressed: (){},
            color: iconDark,
            iconSize: 20.0,
          ),
        ],
      ),
    );
  }
}

//https://bit.ly/2WYkZd5