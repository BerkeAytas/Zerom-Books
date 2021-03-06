import 'package:flutter/material.dart';
import 'main.dart';
import 'search.dart';
import 'case.dart';
import 'profilTarih.dart';
import 'signUp.dart';

void main() => runApp(Profil());

class Profil extends StatelessWidget {
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
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [BoxShadow(offset: Offset(0, -7), blurRadius: 33, color: Colors.black.withOpacity(0.20))]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                }),
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Search()));
                }),
            IconButton(
                icon: Icon(Icons.playlist_add),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Case()));
                }),
            IconButton(
                icon: Icon(Icons.person_outline),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Profil()));
                })
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
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(offset: Offset(0, -7), blurRadius: 33, color: Colors.black.withOpacity(0.20))
                    ]),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 35),
                            child: Text(
                              "Kitap D??nyas??",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35,
                                  color: Colors.white,
                                  fontFamily: 'DancingScript'),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10, right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/images/profilphoto.jpg"), fit: BoxFit.cover),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.4),
                                          spreadRadius: 5,
                                          blurRadius: 5,
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    width: size.width * 0.2,
                                    height: size.height * 0.1,
                                    child: Column(
                                      children: <Widget>[],
                                    ),
                                    //Image.asset("assets/images/profilphoto.jpg",width: size.width * 0.3,semanticLabel: 'Foto??raf Se??in',)),
                                  ),
                                ),
                                Text(
                                  "Berke Aytas",
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
                                ),
                              ],
                            ),
                            IconButton(
                                icon: Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                                })
                          ],
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  color: Colors.white,
                                  width: size.width * 0.2,
                                  height: 1,
                                ),
                                Text(
                                  "   Katogoriler   ",
                                  style: TextStyle(color: Colors.white, fontSize: 17),
                                ),
                                Container(
                                  color: Colors.white,
                                  width: size.width * 0.2,
                                  height: 1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //Bilim kurgu Tarih E??itim Bilim
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              FlatButton(
                                  onPressed: () {
                                    print("object");
                                  },
                                  child: Text(
                                    "Hepsi",
                                    style: TextStyle(color: Colors.white, fontSize: 15),
                                  )),
                              FlatButton(
                                  onPressed: () {
                                    print("object");
                                  },
                                  child: Text(
                                    "Bilim",
                                    style: TextStyle(color: Colors.white, fontSize: 15),
                                  )),
                              FlatButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilDate()));
                                  },
                                  child: Text(
                                    "Tarih",
                                    style: TextStyle(color: Colors.white, fontSize: 15),
                                  )),
                              FlatButton(
                                  onPressed: () {},
                                  child: Text(
                                    "E??itim",
                                    style: TextStyle(color: Colors.white, fontSize: 15),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
            Expanded(
              flex: 8,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                flex: 5,
                                child: Row(
                                  children: <Widget>[
                                    Image.asset(
                                      "assets/images/cezmi.jpg",
                                      width: 100,
                                      height: 100,
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text("Cezmi", style: TextStyle(fontWeight: FontWeight.bold)),
                                        Text("Bkz Yay??nc??l??k"),
                                        Text(
                                          "15.00",
                                          style: TextStyle(color: Colors.brown),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                            Expanded(
                                flex: 2,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            primary: Color(0xFFFE6E3E0),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              side: BorderSide(color: Colors.brown, width: 2),
                                            ),
                                          ),
                                          child: Text(
                                            "D??zenle",
                                            style: TextStyle(color: Colors.brown),
                                          ),
                                          onPressed: () {}),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                flex: 5,
                                child: Row(
                                  children: <Widget>[
                                    Image.asset(
                                      "assets/images/georgeorwell.jpg",
                                      width: 100,
                                      height: 100,
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text("George Owell", style: TextStyle(fontWeight: FontWeight.bold)),
                                        Text("Bkz Yay??nc??l??k"),
                                        Text(
                                          "25.00",
                                          style: TextStyle(color: Colors.brown),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                            Expanded(
                                flex: 2,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: RaisedButton(
                                          color: Color(0xFFFE6E3E0),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              side: BorderSide(color: Colors.brown, width: 2)),
                                          child: Text(
                                            "D??zenle",
                                            style: TextStyle(color: Colors.brown),
                                          ),
                                          onPressed: () {}),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                flex: 5,
                                child: Row(
                                  children: <Widget>[
                                    Image.asset(
                                      "assets/images/kendinehosgeldin.jpg",
                                      width: 100,
                                      height: 100,
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text("Kendine Ho?? Geldin", style: TextStyle(fontWeight: FontWeight.bold)),
                                        Text("Zerom Yay??nc??l??k"),
                                        Text(
                                          "40.50",
                                          style: TextStyle(color: Colors.brown),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                            Expanded(
                                flex: 2,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: RaisedButton(
                                        color: Color(0xFFFE6E3E0),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                            side: BorderSide(color: Colors.brown, width: 2)),
                                        child: Text(
                                          "D??zenle",
                                          style: TextStyle(color: Colors.brown),
                                        ),
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                flex: 5,
                                child: Row(
                                  children: <Widget>[
                                    Image.asset(
                                      "assets/images/stevejobs.jpg",
                                      width: 100,
                                      height: 100,
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text("Steve Jobs", style: TextStyle(fontWeight: FontWeight.bold)),
                                        Text("Bkz Yay??nc??l??k"),
                                        Text(
                                          "25.00",
                                          style: TextStyle(color: Colors.brown),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                            Expanded(
                                flex: 2,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: RaisedButton(
                                          color: Color(0xFFFE6E3E0),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              side: BorderSide(color: Colors.brown, width: 2)),
                                          child: Text(
                                            "D??zenle",
                                            style: TextStyle(color: Colors.brown),
                                          ),
                                          onPressed: () {}),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                flex: 5,
                                child: Row(
                                  children: <Widget>[
                                    Image.asset(
                                      "assets/images/stevejobs.jpg",
                                      width: 100,
                                      height: 100,
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text("Steve Jobs", style: TextStyle(fontWeight: FontWeight.bold)),
                                        Text("Bkz Yay??nc??l??k"),
                                        Text(
                                          "25.00",
                                          style: TextStyle(color: Colors.brown),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                            Expanded(
                                flex: 2,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: RaisedButton(
                                          color: Color(0xFFFE6E3E0),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              side: BorderSide(color: Colors.brown, width: 2)),
                                          child: Text(
                                            "D??zenle",
                                            style: TextStyle(color: Colors.brown),
                                          ),
                                          onPressed: () {}),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                                flex: 2,
                                child: Row(
                                  children: <Widget>[
                                    Image.asset(
                                      "assets/images/stevejobs.jpg",
                                      width: 100,
                                      height: 100,
                                    )
                                  ],
                                )),
                            Expanded(
                                flex: 4,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Text("Steve Jobs", style: TextStyle(fontWeight: FontWeight.bold)),
                                        Text("Bkz Yay??nc??l??k"),
                                        Text(
                                          "25.00",
                                          style: TextStyle(color: Colors.brown),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: RaisedButton(
                                          color: Color(0xFFFE6E3E0),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),
                                              side: BorderSide(color: Colors.brown, width: 2)),
                                          child: Text(
                                            "D??zenle",
                                            style: TextStyle(color: Colors.brown),
                                          ),
                                          onPressed: () {}),
                                    )
                                  ],
                                )),
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
