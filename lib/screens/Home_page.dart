import 'package:bici_smart/screens/account_page.dart';
import 'package:bici_smart/screens/login.dart';
import 'package:flutter/material.dart';

class Home_page extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
          return MaterialApp(
          title: 'homme page',
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
                        padding: const EdgeInsets.all(15),
                        color: Color.fromRGBO(152, 251, 152,0.3) ,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed:(){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> Home_page())
                            );
                          },
                          style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Color.fromRGBO(152, 251, 152,0) ),
                          child: Text("Home",style: TextStyle(fontSize: 15),) ,
                        )
                    ),
                    Container(
                        margin:  const EdgeInsets.only(top: 5),
                        padding: const EdgeInsets.all(15),
                        color: Color.fromRGBO(152, 251, 152,0.3) ,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed:(){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> Account_page())
                            );
                          },
                          style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Color.fromRGBO(152, 251, 152,0) ),
                          child: Text("Perfil",style: TextStyle(fontSize: 15),) ,
                        )
                    ),
                    Container(

                        margin:  const EdgeInsets.only(top: 5),
                        padding: const EdgeInsets.all(15),
                        color: Color.fromRGBO(152, 251, 152,0.3) ,
                        width: double.infinity,
                        child: ElevatedButton(
                        onPressed:(){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> Home_page())
                        );
                        },
                          style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Color.fromRGBO(152, 251, 152,0) ),
                          child: Text("Rutas",style: TextStyle(fontSize: 15),) ,
                        )
                    ),
                    Container(
                        margin:  const EdgeInsets.only(top: 5),
                        padding: const EdgeInsets.all(15),
                        color: Color.fromRGBO(152, 251, 152,0.3) ,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed:(){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> Account_page())
                            );
                          },
                          style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Color.fromRGBO(152, 251, 152,0) ),
                          child: Text("Rutas programadas",style: TextStyle(fontSize: 15),) ,
                        )
                    ),
                    Expanded(child: Container(),),
                    Container(
                        margin:  const EdgeInsets.only(top: 5),
                        padding: const EdgeInsets.all(25),
                        color: Color.fromRGBO(152, 251, 152,0.3) ,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed:(){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> LoginScreen())
                            );
                          },
                           style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Color.fromRGBO(152, 251, 152,0) ),
                          child: Text("cerrar secion",style: TextStyle(fontSize: 15),) ,
                        )

                    ),
                  ],
                ),
              ),
            ),
            appBar: AppBar(
              //shadowColor:Color.fromARGB(0, 0, 0, 0),
              backgroundColor:  Color.fromRGBO(152, 251, 152,0.3) ,
              title: Text('BiciSmart', style: TextStyle(color:Colors.black,fontSize: 30 )),

            ),
            body: Center(
                child: Container(
                    child:ListView(
                      children:[
                        Container(
                          width: 300,
                          height: 50,
                          margin: EdgeInsets.only(top: 20,bottom: 30, left: 10 , right: 10),
                          color: Color.fromRGBO(152, 251, 152,0.3) ,
                          child: TextField(
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              color: Colors.black87,
                              fontFamily: 'OpenSans',
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 14),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black87,
                              ),
                              hintText: 'donde decas ir.....',
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),

                          child: Image.network("https://cdn.discordapp.com/attachments/977421327491285036/1042482284462346272/image.png"),
                        ),
                      ],
                    )
                ),
            ),
          ),
          );

  }
  }

