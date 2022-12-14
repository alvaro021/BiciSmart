import 'package:bici_smart/screens/Home_page.dart';
import 'package:bici_smart/screens/Sign_Up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bici_smart/utilities/constants.dart';
import 'package:bici_smart/screens/BackWheater.dart';
import 'package:bici_smart/screens/fullScreenMap.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              new BackWheater(),
              // Container(
              //   height: double.infinity,
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //       begin: Alignment.topCenter,
              //       end: Alignment.bottomCenter,
              //       colors: [
              //         Color(0xFF73AEF5),
              //         Color(0xFF61A4F1),
              //         Color(0xFF478DE0),
              //         Color(0xFF398AE5),
              //       ],
              //       stops: [0.1,0.4,0.7,0.9],
              //     ),
              //   ),
              // ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 120,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "BiciSmart",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'OpenSans',
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10,),
                      _buildEmailTF(),
                      SizedBox(
                        height: 30.0,
                      ),
                      _buildPasswordTF(),
                      _buildForgotPasswordBtn(),
                      _RememberMeCheckbox(),
                      _buildLoginBtn(context, 'Ingresar'),
                      _buildSignInWithText(),
                      _buildSocialBtnRow(),
                      _buildSignupBtn(context),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  bool _rememberMe = false;

  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: kLabelStyle,
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.black87,
              ),
              hintText: 'Email',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: kLabelStyle,
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.black87,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.black87,
              ),
              hintText: 'Password',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildForgotPasswordBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: OutlinedButton(
        onPressed: () => print('Forgot Password Button Pressed'),
        // padding: EdgeInsets.only(right: 0.0),
        child: Text(
          "¿Olvidaste tu contraseña?",
          style: kLabelStyle,
        ),
      ),
    );
  }

  Widget _RememberMeCheckbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.black87),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.green,
              activeColor: Colors.black87,
              onChanged: (value) {
                setState(() {
                  // _rememberMe = value;
                });
              },
            ),
          ),
          Text(
            'Recuerdame',
            style: kLabelStyle,
          ),
        ],
      ),
    );
  }

  Widget _buildLoginBtn(BuildContext context, text) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: ElevatedButton(
        // elevation: 5.0,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => fullScreenMap())
          );
        },
        child: Text(
          text,
          style: TextStyle(
              color: Colors.black87,
              letterSpacing: 1.5,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans'),
        ),
      ),
    );
  }

  Widget _buildSignInWithText() {
    return Column(
      children: <Widget>[
        Text(
          '- O -',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          'Ingresar con un comentario',
          style: kLabelStyle,
        ),
      ],
    );
  }

  Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      // onTap: onTap,
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black87,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0, 2),
              blurRadius: 6.0,

            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialBtnRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSocialBtn(
                () => print('Login with facebook'),
            AssetImage(
              'assets/logos/facebook.png',
            ),
          ),
          _buildSocialBtn(
                  () => print('Login with Google'),
              AssetImage("assets/logos/google.png")
          ),
        ],
      ),
    );
  }

  Widget _buildSignupBtn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
        child: ElevatedButton(

          onPressed: () {
                Navigator.push(
                  context,
                MaterialPageRoute(builder: (context) => Sign_Up()),
            );
          },
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Sign Up ',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'Don\'t have an Account? ',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                ],
              ),
          ),
      ),
    );
  }
}
