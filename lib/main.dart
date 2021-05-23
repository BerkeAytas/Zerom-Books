import 'package:flutter/material.dart';
import 'search.dart';
import 'profil.dart';
import 'case.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
  final String brk = "laskjdlaskdlaskdnlaksd";
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = "Steve Jobs";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        
        color: Color(0xFFFE6E3E0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top:30),
                        child: Text("Kitap Dünyası",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white,fontFamily: 'DancingScript'),),
                      ),
                    ],
                  ),
                ]
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Son Eklenenler",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            Text("Tümünü Gör",style: TextStyle(color: Colors.brown,)),
                          ],
                        ),
                      ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:15),
                          child: Container(
                            width: size.width * 0.4,
                            child: Column(
                              children: <Widget>[
                                Image.asset("assets/images/stevejobs.jpg",),
                                Container(
                                  padding: EdgeInsets.all(20/2),
                                  decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:BorderRadius.only(
                              bottomLeft:Radius.circular(15),
                              bottomRight:Radius.circular(15),
                            ) ,
                            ),
                                  child: Row(
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: name.toUpperCase()+"\n",
                                              style: TextStyle(color: Colors.black)
                                            ),
                                            TextSpan(
                                              text: '15.00 TL',
                                              style: TextStyle(color: Colors.brown,fontSize: 11)
                                            )
                                          ]
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:15),
                          child: Container(
                            width: size.width * 0.4,
                            child: Column(
                              children: <Widget>[
                                Image.asset("assets/images/georgeorwell.jpg",),
                                Container(
                                  padding: EdgeInsets.all(20/2),
                                  decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:BorderRadius.only(
                              bottomLeft:Radius.circular(15),
                              bottomRight:Radius.circular(15),
                            ) ,
                            ),
                                  child: Row(
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                          children: 
                                          [
                                            TextSpan(
                                              text: 'George Orwell\n'.toUpperCase(),
                                              style: TextStyle(color: Colors.black)
                                            ),
                                            TextSpan(
                                              text: '25.00 TL',
                                              style: TextStyle(color: Colors.brown,fontSize: 11)
                                            )
                                          ]
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:15),
                          child: Container(
                            width: size.width * 0.4,
                            child: Column(
                              children: <Widget>[
                                Image.asset("assets/images/kendinehosgeldin.jpg",),
                                Container(
                                  padding: EdgeInsets.all(20/2),
                                  decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:BorderRadius.only(
                              bottomLeft:Radius.circular(15),
                              bottomRight:Radius.circular(15),
                            ) ,
                            ),
                                  child: Row(
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Kendine Hoş Geldin\n'.toUpperCase(),
                                              style: TextStyle(color: Colors.black),
                                            ),
                                            TextSpan(
                                              text: '15.00 TL',
                                              style: TextStyle(color: Colors.brown,fontSize: 11)
                                            )
                                          ]
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:15),
                          child: Container(
                            width: size.width * 0.4,
                            child: Column(
                              children: <Widget>[
                                Image.asset("assets/images/stevejobs.jpg",),
                                Container(
                                  padding: EdgeInsets.all(20/2),
                                  decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:BorderRadius.only(
                              bottomLeft:Radius.circular(15),
                              bottomRight:Radius.circular(15),
                            ) ,
                            ),
                                  child: Row(
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Seteve Jobs\n'.toUpperCase(),
                                              style: TextStyle(color: Colors.black)
                                            ),
                                            TextSpan(
                                              text: '15.00 TL',
                                              style: TextStyle(color: Colors.brown,fontSize: 11)
                                            )
                                          ]
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Öne Çıkanlar",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            Text("Tümünü Gör",style: TextStyle(color: Colors.brown,)),
                          ],
                        ),
                      ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:15),
                          child: Container(
                            width: size.width * 0.4,
                            child: Column(
                              children: <Widget>[
                                Image.asset("assets/images/kendinehosgeldin.jpg",),
                                Container(
                                  padding: EdgeInsets.all(20/2),
                                  decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:BorderRadius.only(
                              bottomLeft:Radius.circular(15),
                              bottomRight:Radius.circular(15),
                            ) ,
                            ),
                                  child: Row(
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Kendine Hoş Geldin\n'.toUpperCase(),
                                              style: TextStyle(color: Colors.black)
                                            ),
                                            TextSpan(
                                              text: '15.00 TL',
                                              style: TextStyle(color: Colors.brown,fontSize: 11)
                                            )
                                          ]
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:15),
                          child: Container(
                            width: size.width * 0.4,
                            child: Column(
                              children: <Widget>[
                                Image.asset("assets/images/cezmi.jpg",),
                                Container(
                                  padding: EdgeInsets.all(20/2),
                                  decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:BorderRadius.only(
                              bottomLeft:Radius.circular(15),
                              bottomRight:Radius.circular(15),
                            ) ,
                            ),
                                  child: Row(
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Cezmi\n'.toUpperCase(),
                                              style: TextStyle(color: Colors.black)
                                            ),
                                            TextSpan(
                                              text: '30.00 TL',
                                              style: TextStyle(color: Colors.brown,fontSize: 11)
                                            )
                                          ]
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:15),
                          child: Container(
                            width: size.width * 0.4,
                            child: Column(
                              children: <Widget>[
                                Image.asset("assets/images/stevejobs.jpg",),
                                Container(
                                  padding: EdgeInsets.all(20/2),
                                  decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:BorderRadius.only(
                              bottomLeft:Radius.circular(15),
                              bottomRight:Radius.circular(15),
                            ) ,
                            ),
                                  child: Row(
                                    children: <Widget>[
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Seteve Jobs\n'.toUpperCase(),
                                              style: TextStyle(color: Colors.black)
                                            ),
                                            TextSpan(
                                              text: '15.00 TL',
                                              style: TextStyle(color: Colors.brown,fontSize: 11)
                                            )
                                          ]
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Katogoriler",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                        Text("Tümünü Gör",style: TextStyle(color:Colors.brown),)
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right:8),
                            child: Container(
                              //color: Colors.black,
                              decoration: BoxDecoration(
                                image:DecorationImage(
                                  image: AssetImage("assets/images/test.jpg"),
                                  fit: BoxFit.cover
                                ),
                                boxShadow: [BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                ),
                                ],
                                borderRadius: BorderRadius.circular(7),
                              ),
                              width: size.width * 0.5,
                              height: size.height * 0.2,
                              child:Column(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text("Testler",style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),)
                                    ],
                                  ),
                                ],
                              )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right:8),
                            child: Container(
                              //color: Colors.black,
                              decoration: BoxDecoration(
                                image:DecorationImage(
                                  image: AssetImage("assets/images/tarih.jpg"),
                                  fit: BoxFit.cover
                                ),
                                boxShadow: [BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                ),
                                ],
                                borderRadius: BorderRadius.circular(7),
                              ),
                              width: size.width * 0.5,
                              height: size.height * 0.2,
                              child:Column(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text("Tarih",style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),)
                                    ],
                                  ),
                                ],
                              )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right:8),
                            child: Container(
                              //color: Colors.black,
                              decoration: BoxDecoration(
                                image:DecorationImage(
                                  image: AssetImage("assets/images/bilim.jpg"),
                                  fit: BoxFit.cover
                                ),
                                boxShadow: [BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                ),
                                ],
                                borderRadius: BorderRadius.circular(7),
                              ),
                              width: size.width * 0.5,
                              height: size.height * 0.2,
                              child:Column(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text("Bilim",style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),)
                                    ],
                                  ),
                                ],
                              )
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                   ],
            ),
              ),
            ),
            /*Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:40),
                  child: Text("ZEROM Books",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Son eklenenler",style: TextStyle(fontSize: 15),),
                      Text("Tümünü Gör",style: TextStyle(color: Colors.brown,)),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        color: Colors.white,
                        height: 150,
                        width: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom:20),
                          child: Image.asset("assets/images/barbel.jpg",width: 100,),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),*/
          ],
        ),
      ), 
    );
  }
}
