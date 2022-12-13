
import 'package:bici_smart/screens/login.dart';
import 'package:bici_smart/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:bici_smart/screens/Home_page.dart';
import 'package:bici_smart/screens/Rutas_programas.dart';
import 'package:bici_smart/screens/Rutas_page.dart';

class Account_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Account',
      home: Scaffold(
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
        appBar: AppBar(
          //shadowColor:Color.fromARGB(0, 0, 0, 0),
          backgroundColor: Color.fromRGBO(152, 251, 152,0.3),
          title: Text('BiciSmart', style: TextStyle(color:Colors.black,fontSize: 30)),

        ),
        body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/logos/fondo1.png"),
              fit: BoxFit.cover
            )
          ),
          child: ListView(
            children: [

              Container(
                margin: EdgeInsets.only(top: 90),
                alignment: Alignment.center,
                width: 140,
                height: 140,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset("assets/images/user.png"),

                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Benito Mussolini", style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold)),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 20),
                child: Text("km", style: TextStyle(fontSize: 40,fontWeight:FontWeight.bold)),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 5),
                child: Text("total recorrido 23.5", style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold)),
              ),
              Container(
                color: Color.fromRGBO(152, 251, 152,0),
                width: 500,
                height: 40,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.only(top:10 , bottom: 400 , right: 100 , left: 100),
                child: Text("total recorrido 23.5", style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold)),
              ),
              Container(
                  color: Color.fromRGBO(152, 251, 152,0),
                  width: 500,
                  height: 400,
                  margin: EdgeInsets.only(top: 30),
                  alignment: Alignment.center,
                  child: Text("Logros", style: TextStyle(fontSize: 50,fontWeight:FontWeight.bold)
                        ),

                  ) ,
            ]
          ),


          )
        ),
      ),
    );

  }
}