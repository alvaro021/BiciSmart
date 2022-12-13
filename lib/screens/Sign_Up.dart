import 'package:bici_smart/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:bici_smart/screens/Home_page.dart';
import 'package:bici_smart/screens/login.dart';

class Sign_Up extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const altura = 17.0;
    return MaterialApp(
      title: 'Sign Up',
      home: Scaffold(
        body: Center(
          child: Container(
        height: double.infinity,
        child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
    padding: EdgeInsets.symmetric(
    horizontal: 40,
    vertical: 70,
    ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Crear Cuenta',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'OpenSans',
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(
                    height: 30.0,
                  ),
                  _buildEmailTF(Icon(
                    Icons.email,
                    color: Colors.black87,
                  ), 'Email'),
                  SizedBox(height: altura),
                  _buildEmailTF(Icon(
                    Icons.account_circle,
                    color: Colors.black87,
                  ), 'Nombre Usuario'),
                  SizedBox(height: altura),
                  _buildEmailTF(Icon(
                    Icons.lock,
                    color: Colors.black87,
                  ), 'Contraseña'),
                  _CrearCuenta(context,'Crear Cuenta'),
                  _Cancel(context, 'Cancelar')
                ],
              ),
        ),
          ),
        ),
      ),
    );

  }
  Widget _buildEmailTF(icon, text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          text,
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
              prefixIcon: icon,
              hintText: text,
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
Widget _Cancel(BuildContext context, text) {
  return Container(
    height: 40,
    padding: EdgeInsets.symmetric(horizontal: 5.0),
    width: double.infinity,
    alignment: Alignment.center,
    decoration: yBoxDecorationStyle,
    child: ElevatedButton(
      //elevation: 5.0,

      onPressed: () {
        Navigator.pop(context,
        );
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFD84315),
          textStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold)),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.black87,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans'),
      ),
  ),);
}
Widget _CrearCuenta(BuildContext context, text) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25.0),
    width: double.infinity,
    child: ElevatedButton(
      // elevation: 5.0,
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Home_page())
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

