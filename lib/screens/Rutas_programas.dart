import 'dart:ffi';

import 'package:bici_smart/screens/account_page.dart';
import 'package:bici_smart/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:bici_smart/screens/Home_page.dart';
import 'package:bici_smart/screens/Rutas_page.dart';

class Rutas_programadas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'rutas page',
      home: Scaffold(
        appBar: AppBar(
          //shadowColor:Color.fromARGB(0, 0, 0, 0),
          backgroundColor:  Color.fromRGBO(152, 251, 152,0.3) ,
          title: Text('BiciSmart', style: TextStyle(color:Colors.black,fontSize: 30 )),

        ),
        drawer: Drawer(
          backgroundColor:Color.fromRGBO(175, 206, 185, 1.0),
          child: Container(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Color.fromRGBO(
                        145, 166, 153, 1.0)),
                    accountName: Text("Benito Musilini"),
                    accountEmail:Text("benito@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/user.png"),
                    ))
                ,
                ListTile(
                  textColor: Colors.white,
                  leading: Icon(Icons.home),
                  title: Text("Home",style: TextStyle(fontSize: 17),) ,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Home_page()));
                  },
                ),
                Divider(color: Colors.white,),
                ListTile(
                  textColor: Colors.white,
                  leading: Icon(Icons.account_circle_rounded),
                  title: Text("Perfil",style: TextStyle(fontSize: 17),) ,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Account_page()));
                  },
                ),
                Divider(color: Colors.white,),
                ListTile(
                  textColor: Colors.white,
                  leading: Icon(Icons.route),
                  title: Text("Rutas",style: TextStyle(fontSize: 17),) ,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Rutas_page()));
                  },
                ),
                Divider(color: Colors.white,),
                ListTile(
                  textColor: Colors.white,
                  leading: Icon(Icons.notification_add_sharp),
                  title: Text("Rutas programadas",style: TextStyle(fontSize: 17),) ,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Rutas_programadas()));
                  },
                ),
                Divider(color: Colors.white,),
                Container(
                  child: ListTile(
                    textColor: Colors.white,
                    leading: Icon(Icons.exit_to_app),
                    title: Text("Cerrar secion",style: TextStyle(fontSize: 17),) ,
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                    },
                  ),
                ),
                Divider(color: Colors.white,),
              ],
            ),
          ),
        ),
        body: Center(
          child: Container(
              child:ListView(
                children: [],
              )
          ),
        ),
      ),
    );

  }
}