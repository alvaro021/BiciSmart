import 'package:bici_smart/screens/BackWheater.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final button = new InkWell(
      child: new Container(
        margin: new EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20
        ),

        height: 50,
        width: 100,

        decoration: new BoxDecoration(
          boxShadow: [
            new BoxShadow(
              color: Color(0xFFf38b02),
              offset: new Offset(10.0,10.0),
              blurRadius: 30
            )
          ],

          borderRadius:  new BorderRadius.circular(30),
          color: Color(0xFFfeb800),

        ),

        child: new Center(
          child: new Text(
            "Sig in With Google",
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.w900
            ),
          ),
        ),
      ),
    );

    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new BackWheater(),
          new Container(
            alignment: Alignment.center,
            margin: new EdgeInsets.only(
              top: 200.0
            ),

            child: new Column(
              children: <Widget>[
                new Text(
                  "BiciSmart",
                  style: const TextStyle(
                    fontSize: 55.0,
                    color: Color(0xfffafafa),
                    fontWeight: FontWeight.w600
                  ),
                ),
                button
              ],
            ),
          )
        ],
      ),
    );
  }
}