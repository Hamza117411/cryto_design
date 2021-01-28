import 'package:flutter/material.dart';
import 'package:food/screens/first_screen.dart';
import 'package:food/screens/second_screen.dart';
import 'constant/SizeConfig.dart';
import 'main1screen.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //SizeConfig().init(context);
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
        )
      ),
      debugShowCheckedModeBanner: false,
      home: screen(),
    );
  }
}
class screen extends StatefulWidget {
  @override
  _screenState createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> main1()));
              },
              color: Colors.blue,
              minWidth: 200,
              child: Text("First Screen"),
            ),
            MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> cryptoapp()));
              },
              color: Colors.blue,
              minWidth: 200,
              child: Text("Second Screen"),
            )
          ],
        ),
      ),

    );
  }
}
