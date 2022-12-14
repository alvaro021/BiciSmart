import 'dart:ffi';

import 'package:bici_smart/screens/account_page.dart';
import 'package:bici_smart/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:bici_smart/screens/Home_page.dart';
import 'package:bici_smart/screens/Rutas_page.dart';
import 'package:bici_smart/screens/Rutas_programas.dart';


class Lista_Rutas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'list rutas page',
      home: Scaffold(
        appBar: AppBar(
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
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child:ListTile(
                      leading: Icon(Icons.arrow_back,size: 35,color: Colors.black),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Rutas_page()));
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    alignment: Alignment.center,
                    child: Text("{ingrsear titulo de los tipos de ruta}",style: TextStyle(fontSize: 20),),
                  ),
                  Divider(color: Colors.black38,),
                  Card(
                    margin: EdgeInsets.all(5),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: <Widget> [
                          Text("nombre ruta",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          Text("esta es la descripcion de la ruta que te dices que es una ruta bonita etc.."),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: ElevatedButton(
                              onPressed:(){
                                showDialog(context: context,builder: (context)=> AlertDialog(
                                  title: Text("nombre ruta"),
                                  content: Container(
                                    height: 250,
                                    child:Column(
                                      children: [
                                        Image.asset("assets/images/paisaje.jpg"),
                                        Text("esta es la descripcion de la ruta que te dices que es una ruta bonita etc.."),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.only(top: 5),
                                          child: Text("Duracion pormedio   : 23 min"),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text("largo del recorrido : 2.5 KM"),
                                        )
                                      ],
                                    ),
                                  ),
                                    actions: [
                                    ElevatedButton(
                                      onPressed:(){
                                      },
                                      style: TextButton.styleFrom(backgroundColor: Colors.lightGreen),
                                      child: Text("comenzar"),
                                    ) ,
                                    ElevatedButton(
                                      onPressed:(){
                                        Navigator.of(context).pop("");
                                      },
                                      style: TextButton.styleFrom(backgroundColor: Colors.pink),
                                      child: Text("cancelar") ,
                                    ) ,
                                  ],
                                  ),
                                );
                              },
                              style: TextButton.styleFrom(backgroundColor: Colors.lightGreen),
                              child: Text("detalles"),
                            ) ,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
          ),
        ),
      ),
    );

  }
}