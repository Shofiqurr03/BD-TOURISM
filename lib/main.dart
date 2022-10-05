import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourism/Models/Places_data.dart';
import 'package:tourism/Screens/Home_Screen.dart';

void main() {
  runApp(Tourism());
}

class Tourism extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final backgroundColor = const Color(0xFFE7ECEF);
    return ChangeNotifierProvider(
      create: (_) => Place_info(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'Home_Screen',
        routes: {'Home_Screen': (context) => slash_screen()},
      ),
    );
  }
}

class slash_screen extends StatefulWidget {
  @override
  _slash_screenState createState() => _slash_screenState();
}

class _slash_screenState extends State<slash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Home_Screen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: [
            Container(
              child: Center(
                child: Image.asset("images/t.png"),

                //Text('Tourism',style: TextStyle(color: Colors.lightGreenAccent,fontSize: 35.0),
              ),
            ),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 400.0),
                child: CircularProgressIndicator(
                  strokeWidth: 3.0,
                  backgroundColor: Color(0xff8cb0b6),
                  valueColor: AlwaysStoppedAnimation(Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
