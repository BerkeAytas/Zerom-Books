import 'package:flutter/material.dart';
import 'main.dart';
import 'search.dart';
import 'case.dart';
import 'profil.dart';

void main() => runApp(ProfilDate());

class ProfilDate extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Berke Aytas"),
        actions: <Widget>[
          Container(child:Center(child: Text("data"),),
          decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:BorderRadius.only(
            bottomLeft:Radius.circular(20),
            bottomRight:Radius.circular(20),
          ) ,))
        ],
      ),*/
      bottomNavigationBar: Container(
        height: 55,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:BorderRadius.only(
            topLeft:Radius.circular(20),
            topRight:Radius.circular(20),
          ) ,
          boxShadow:[
            BoxShadow(
              offset: Offset(0 ,-7),
              blurRadius: 33,
              color: Colors.black.withOpacity(0.20)
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home), onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
              }
            ),
            IconButton(
              icon: Icon(Icons.search), onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Search()));
              }
            ),
            IconButton(
              icon: Icon(Icons.playlist_add), onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Case()));
              }
            ),
            IconButton(
              icon: Icon(Icons.person_outline), onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Profil()));
              }
            )
          ],
        ),
      ),
      body: Container(
        //padding: EdgeInsets.only(top:40),
        color: Color(0xFFFE6E3E0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius:BorderRadius.only(
                    bottomRight:Radius.circular(50),
                    bottomLeft:Radius.circular(50),
                  ) ,
                  boxShadow:[
                    BoxShadow(
                      offset: Offset(0 ,-7),
                      blurRadius: 33,
                      color: Colors.black.withOpacity(0.20)
                    )
                  ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                                padding: const EdgeInsets.only(top:35),
                                child: Text("ZEROM Books",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
                              ),
                        ],
                      ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right:20),
                              child: Image.asset("assets/images/profilphoto.jpg",width: size.width * 0.3,),
                            ),
                            Text("Berke Aytas",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                          ],
                        ),  
                        IconButton(
                          icon: Icon(Icons.settings,color: Colors.white,), 
                          onPressed: (){
                            print("object");
                          }
                        )
                      ],
                    ),
                  ),
                  ],
                  ),
                  //Bilim kurgu Tarih Eğitim Bilim 
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text("Katogoriler",style: TextStyle(color:Colors.white,fontSize: 17),),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              FlatButton(
                                onPressed: (){
                                  print("object");
                                },
                                child: Text("Bilim",style: TextStyle(color:Colors.white,fontSize:15),)
                              ),
                              FlatButton(
                                onPressed: (){},
                                child: Text("Tarih",style: TextStyle(color:Colors.white,fontSize:15),)
                              ),
                              FlatButton(
                                onPressed: (){},
                                child: Text("Eğitim",style: TextStyle(color:Colors.white,fontSize:15),)
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top:15),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top:8),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Row(
                                children: <Widget>[
                                  Image.asset("assets/images/stevejobs.jpg",width: 100,height: 100,)
                                ],
                              )
                            ),
                            Expanded(
                              flex: 4,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text("Steve Jobs",style:TextStyle(fontWeight:FontWeight.bold)),
                                      Text("Bkz Yayıncılık"),
                                      Text("25.00",style: TextStyle(color:Colors.brown),),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right:8),
                                    child: RaisedButton(
                                      color: Color(0xFFFE6E3E0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side:BorderSide(color: Colors.brown,width: 2)
                                      ),
                                      child: Text("Düzenle",style: TextStyle(color:Colors.brown),),
                                      onPressed: (){

                                    }),
                                  )
                                ],
                              )
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:8),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Row(
                                children: <Widget>[
                                  Image.asset("assets/images/stevejobs.jpg",width: 100,height: 100,)
                                ],
                              )
                            ),
                            Expanded(
                              flex: 4,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text("Steve Jobs",style:TextStyle(fontWeight:FontWeight.bold)),
                                      Text("Bkz Yayıncılık"),
                                      Text("25.00",style: TextStyle(color:Colors.brown),),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right:8),
                                    child: RaisedButton(
                                      color: Color(0xFFFE6E3E0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side:BorderSide(color: Colors.brown,width: 2)
                                      ),
                                      child: Text("Düzenle",style: TextStyle(color:Colors.brown),),
                                      onPressed: (){

                                    }),
                                  )
                                ],
                              )
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:8),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Row(
                                children: <Widget>[
                                  Image.asset("assets/images/stevejobs.jpg",width: 100,height: 100,)
                                ],
                              )
                            ),
                            Expanded(
                              flex: 4,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text("Steve Jobs",style:TextStyle(fontWeight:FontWeight.bold)),
                                      Text("Bkz Yayıncılık"),
                                      Text("25.00",style: TextStyle(color:Colors.brown),),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right:8),
                                    child: RaisedButton(
                                      color: Color(0xFFFE6E3E0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side:BorderSide(color: Colors.brown,width: 2)
                                      ),
                                      child: Text("Düzenle",style: TextStyle(color:Colors.brown),),
                                      onPressed: (){

                                    }),
                                  )
                                ],
                              )
                            ),
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ), 
    );
  }
}
