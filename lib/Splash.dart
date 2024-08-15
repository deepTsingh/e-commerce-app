import 'package:flutter/material.dart';
import 'package:shop_app/HomeScreen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
 void initState(){
  super.initState();
  _navigatetohome();
 }


_navigatetohome()async{
 await Future.delayed(Duration(milliseconds: 1500),(){});
 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            'Splash Screen'
          ),
        ),
      ),
    );
  }
}