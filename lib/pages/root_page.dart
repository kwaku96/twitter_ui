import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_demo/pages/write_tweet_page.dart';
import './home_page.dart';
import './messages.dart';
import './notifications.dart';
import './search_page.dart';
import '../components/side_nav.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),title: Text('Home')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),title: Text('Search')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),title: Text('Notifications')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline),title: Text('Messaage')
          )
        ],
        unselectedItemColor: Colors.black.withAlpha(180),
        selectedItemColor: Colors.blue,
        showSelectedLabels: false,
        onTap: (index){
          setState(() { _currentIndex = index; });
        },
        currentIndex: _currentIndex,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(CupertinoPageRoute(
            builder: (context)=> WriteTweetPage()
          ));
        },
        child: _currentIndex != 3 ? 
          Icon(FontAwesomeIcons.featherAlt):
          Icon(Icons.mail_outline),
      ),
      drawer: Drawer(
        child: SideNav(),
      ),
      body: _pages(_currentIndex),
    );
  }

  Widget _pages(int index){
    switch(index){
      case 0:
        return HomePage();
        break;
      case 2:
        return NotificationsPage();
        break;
      case 3:
        return MessagesPage();
        break;
      default:
        return SearchPage();
    }
  }

}
