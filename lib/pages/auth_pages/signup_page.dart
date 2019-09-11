import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_demo/utils/fontStyle.dart';
import 'package:twitter_demo/utils/validators.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  final formKey = GlobalKey<FormState>();
  String email = '';
  String password='';
  bool autoValidateForm = false;
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Icon(FontAwesomeIcons.twitter),
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
                    'Create your account',
                    style: loginPageHeader,
                    textAlign: TextAlign.left,
                  )
                ),

                Flexible(child: Container(),flex: 3,),

                TextFormField(
                  maxLength: 50,
                  decoration: InputDecoration(
                    hintText: 'User handle'
                  ),
                  onSaved: (val){
                    email = val;
                  },
                ),

                SizedBox(height: 20.0,),

                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email'
                  ),
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

                TextFormField(
                  obscureText: !isPasswordVisible,
                  onSaved: (val){password = val;},
                  decoration: InputDecoration(
                    hintText: 'Password',
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

                Flexible(
                  flex: 5,
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
                              child: Text('Sign up'),
                              color: Colors.blue,
                              textColor: Colors.white,
                              disabledColor: Colors.blue.withAlpha(140),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(25.0))
                              ),
                              onPressed: (){},
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