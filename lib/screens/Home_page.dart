import 'package:flutter/material.dart';

class Home_page extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
          return MaterialApp(
          title: 'Welcome to Flutter',
          home: Scaffold(
            drawer: Drawer(
              backgroundColor:Color.fromRGBO(218, 238, 235, 1),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      width: 125,
                      height: 125,
                      margin: const EdgeInsets.only(top: 50,bottom: 20),

                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.network("https://www.labsaenzrenauld.com/wp-content/uploads/2020/10/Perfil-hombre-ba%CC%81sico_738242395.jpg"),
                      ),
                    ),
                    Text("Benito Mussolini", style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold)),
                    Container(
                      margin:  const EdgeInsets.only(top: 40),
                      padding: const EdgeInsets.all(25),
                      color: Color.fromRGBO(152, 251, 152,0.3) ,
                      width: double.infinity,
                      child: Text("Perfil",style: TextStyle(fontSize: 15),)
                    ),
                    Container(
                        margin:  const EdgeInsets.only(top: 5),
                        padding: const EdgeInsets.all(25),
                        color: Color.fromRGBO(152, 251, 152,0.3) ,
                        width: double.infinity,
                        child: Text("Rutas",style: TextStyle(fontSize: 15),)
                    ),
                    Container(
                        margin:  const EdgeInsets.only(top: 5),
                        padding: const EdgeInsets.all(25),
                        color: Color.fromRGBO(152, 251, 152,0.3) ,
                        width: double.infinity,
                        child: Text("Rutas programadas",style: TextStyle(fontSize: 15),)
                    ),
                    Expanded(child: Container(),),
                    Container(
                        margin:  const EdgeInsets.only(top: 5),
                        padding: const EdgeInsets.all(25),
                        color: Color.fromRGBO(152, 251, 152,0.3) ,
                        width: double.infinity,
                        child: Text("cerrar secion",style: TextStyle(fontSize: 15),)
                    ),
                  ],
                ),
              ),
            ),
            appBar: AppBar(
              //shadowColor:Color.fromARGB(0, 0, 0, 0),
              backgroundColor: Color.fromRGBO(218, 238, 235, 1) ,
              title: Text('BiciSmart', style: TextStyle(color:Colors.black,fontSize: 30 )),

            ),
            body: Center(
            child: Text('empesar mi menu'),
          ),
        ),
      );

    }
  }

