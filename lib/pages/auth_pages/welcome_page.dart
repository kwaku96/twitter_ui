import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_demo/pages/auth_pages/signup_page.dart';
import 'package:twitter_demo/utils/fontStyle.dart';
import './login_page.dart';

class WelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30.0,horizontal: 30.0),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(FontAwesomeIcons.twitter,color: Colors.blue,),
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "See what's happening in the world right now.",
                      style: welcomeTextStyle,
                    ),
                    SizedBox(height: 20.0,),
                    RaisedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Create account',style: TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),
                      color: Colors.blue,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))
                      ),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context)=>SignupPage()
                        ));
                      },
                    )
                  ],
                ),
              ),
            ),
            _buildBottomButton(context)
          ],
        ),
      ),
    );
  }

  Widget _buildBottomButton(BuildContext context){
    return Row(
      children: <Widget>[
        Text(
          'Have an account already? ',
          style: TextStyle(color: Colors.black.withAlpha(130)),
        ),
        InkWell(
          child: Text('Log in',style: TextStyle(color: Colors.blue),),
          onTap: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context)=>LoginPage())
            );
          },
        )
      ],
    );
  }
}
