import 'package:flutter/material.dart';
import 'main.dart';
import 'search.dart';
import 'case.dart';
import 'profil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(SignUp());

class SignUp extends StatelessWidget {
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
        /*decoration:
                  BoxDecoration(image: 
                    DecorationImage(image: AssetImage("assets/images/signbackground.jpg"),
                      fit: BoxFit.cover,
                    )
                  ),*/
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
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: <Widget>[
                      Icon(FontAwesomeIcons.bookOpen,color: Colors.white,size: 60,), 
                      //Image.asset("assets/images/book3.png"),
                      Text("Sign Up",style: TextStyle(fontSize: 25),),
                      TextField(
                              style: TextStyle(color: Colors.white),
                                decoration: 
                                  InputDecoration(
                                    icon: Icon(Icons.account_circle,color: Colors.black,),
                                    enabledBorder: UnderlineInputBorder(      
	                                  borderSide: BorderSide(color: Colors.black),   
	                                ), 
                                    focusedBorder: UnderlineInputBorder(
	                                  borderSide: BorderSide(color: Colors.brown),
                                    )
                                  ) 
                      ),
                      TextFormField(
                              /*validator: (value) {
                                if (value.isEmpty) {
                                  return 'Lütfen Şifrenizi Yazın';
                                }
                                return null;
                              },*/
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: 
                          InputDecoration(
                            icon: Icon(Icons.lock_outline,color:Colors.black),
                            enabledBorder: UnderlineInputBorder(      
	                            borderSide: BorderSide(color: Colors.black),   
	                          ),
                            focusedBorder: UnderlineInputBorder(
	                            borderSide: BorderSide(color: Colors.brown),
                            )
                          ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                      padding: const EdgeInsets.only(top:25),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          side:BorderSide(color: Colors.black,width: 1)
                        ),
                        color: Color(0xFFFE6E3E0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Login Now",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
                        ),
                        onPressed: (){
                       // if (_formKey.currentState.validate()) { 
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                        //}
                        }
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:25),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          side:BorderSide(color: Colors.black,width: 1)
                        ),
                        color: Color(0xFFFE6E3E0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Sign Up",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
                        ),
                        onPressed: (){
                       // if (_formKey.currentState.validate()) { 
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                        //}
                        }
                      ),
                    ),
                    ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              color: Colors.black,
                              width: size.width * 0.3,
                              height: 1,
                            ),
                            Text("   Veya   ",style: TextStyle(color:Colors.black,fontSize: 17),),
                            Container(
                              color: Colors.black,
                              width: size.width * 0.3,
                              height: 1,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:40),
                        child: Text("Telefon numarası girdikten sonra SMS ile giriş kodunuz gelicektir."),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                                style: TextStyle(color: Colors.white),
                                  decoration: 
                                    InputDecoration(
                                      icon: Icon(Icons.phone,color: Colors.black,),
                                      enabledBorder: UnderlineInputBorder(      
	                                  borderSide: BorderSide(color: Colors.black),   
	                                ), 
                                      focusedBorder: UnderlineInputBorder(
	                                  borderSide: BorderSide(color: Colors.brown),
                                      )
                                    ) 
                        ),
                      ),
                      Padding(
                      padding: const EdgeInsets.only(top:25),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          side:BorderSide(color: Colors.black,width: 1)
                        ),
                        color: Color(0xFFFE6E3E0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Kodu Gönder",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20)),
                        ),
                        onPressed: (){
                       // if (_formKey.currentState.validate()) { 
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                        //}
                        }
                      ),
                    ),
                    ],
                  ),
                ),
              ),
            )
          ],
        )
      )
    );
  }
}
