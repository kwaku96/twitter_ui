import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:twitter_demo/utils/fontStyle.dart';
import '../../utils/validators.dart';
import '../root_page.dart';
import 'signup_page.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final formKey = GlobalKey<FormState>();
  bool autoValidateForm = false;
  bool isPasswordVisible = false;
  String email = '';
  String password = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Icon(FontAwesomeIcons.twitter,color: Colors.blue,),
        actions: <Widget>[
          FlatButton(
            color: Colors.transparent,
            child: Text(
              'Sign up',
              style: TextStyle(color: Colors.blue,fontSize: 16.0),
            ),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=> SignupPage()
              ));
            },
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.ellipsisV),
            onPressed: (){},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          autovalidate: autoValidateForm,
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Text(
                  'Log in to Twitter.',
                  style: loginPageHeader,
                  textAlign: TextAlign.left,
                )
              ),

              SizedBox(height: 20.0,),

              Container(
                width: double.infinity,
                child: Text(
                  'Email address',
                  textAlign: TextAlign.start,
                )
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                onSaved: (val){
                  email = val;
                },
                validator: (val){
                  if(validateEmail(val)){
                    return null;
                  }
                  return 'Enter a valid email';
                },
              ),
              
              SizedBox(height: 20.0,),

              Container(
                width: double.infinity,
                child: Text('Password')
              ),
              TextFormField(
                obscureText: !isPasswordVisible,
                onSaved: (val){password = val;},
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(!isPasswordVisible? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash ),
                    onPressed: (){
                      setState(() { isPasswordVisible = !isPasswordVisible; });
                    },
                  )
                ),
                validator: (val){
                  if(val.length < 8)
                    return 'Password must be at least 8 char long';
                  return '';
                },
              ),
              FlatButton(
                color: Colors.transparent,
                child: Text('forgotten password ?'),
                onPressed: (){},
              ),
              Flexible(
                child: Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          RaisedButton(
                            child: Text('Login'),
                            color: Colors.blue,
                            textColor: Colors.white,
                            disabledColor: Colors.blue.withAlpha(140),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(25.0))
                            ),
                            onPressed: (){
                              Navigator.of(context).pushReplacement(MaterialPageRoute(
                                builder: (context)=> RootPage()
                              ));
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
