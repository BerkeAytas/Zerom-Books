import 'package:flutter/material.dart';
import 'main.dart';
import 'profil.dart';
import 'case.dart';

void main() => runApp(Search());

class Search extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
        padding: const EdgeInsets.all(50),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                  'Arama',style: TextStyle(color: Colors.grey,fontSize:20),
            ),
            TextField(
              style: TextStyle(color: Colors.black),
              decoration: 
                InputDecoration(
                  hintText: "Kitap,Yazar Adı,ISBN ara",
                  icon: Icon(Icons.search,color: Colors.black,),
                  enabledBorder: UnderlineInputBorder(      
	                  borderSide: BorderSide(color: Colors.black),   
	                ), 
                  focusedBorder: UnderlineInputBorder(
	                  borderSide: BorderSide(color: Colors.black),
                  )
                )
            ),
          ],
        ),
      ), 
    );
  }
}
