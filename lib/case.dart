import 'package:flutter/material.dart';
import 'package:zerombooks/signUp.dart';
import 'main.dart';
import 'search.dart';
import 'profil.dart';

void main() => runApp(Case());

class Case extends StatelessWidget {
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
    return Scaffold(
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
        color: Color(0xFFFE6E3E0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                flex: 4,
                child: Container(
                  //color: Colors.brown,
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.only(
                        bottomLeft: new Radius.elliptical(800.0, 70.0),
                        bottomRight: new Radius.elliptical(800.0, 70.0),
                      ),
                      boxShadow: [
                        BoxShadow(offset: Offset(0, -7), blurRadius: 33, color: Colors.black.withOpacity(0.20))
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 45, bottom: 30),
                        child: Image.asset("assets/images/kendinehosgeldin.jpg"),
                      )
                    ],
                  ),
                )),
            Expanded(
              flex: 4,
              child: Container(
                //color: Colors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40, left: 24, right: 24, bottom: 24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  "Kendine Hoş Geldin",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                ),
                                Text(
                                  "ISBN:182739182",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  "Miraç Çağrı Aktaş",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  "Kargo:Alıcı Öder",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text(
                                    "Kitap Hakkında",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "Miraç Çağrı Aktaş, Kendine Hoş Geldin adlı kitabında sizi, kendinizi bulmaya ve hak ettiğiniz değeri kendinize vermeye çağırıyor. Bu kitapla duygu dünyanızın yegane başrolü olan benliğinize geri dönecek ve kendinize tüm içtenliğinizle “Hoş Geldin!” diyeceksiniz. ",
                                      overflow: TextOverflow.clip,
                                      softWrap: true,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(70),
                            topLeft: Radius.circular(70),
                          ),
                          boxShadow: [
                            BoxShadow(offset: Offset(0, -7), blurRadius: 33, color: Colors.black.withOpacity(0.20))
                          ]),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 35, right: 35),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          side: BorderSide(color: Colors.black, width: 1)),
                                    ),
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                                    },
                                    child: Text(
                                      "Satın Al",
                                      style: TextStyle(fontSize: 17),
                                    )),
                                Text(
                                  "25.00 TL",
                                  style: TextStyle(fontSize: 17, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
