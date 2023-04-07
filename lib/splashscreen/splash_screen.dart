import 'dart:async';

import 'package:bubble_tea/main.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class splash_screen extends StatefulWidget
{

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>home_page()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child:Lottie.network("https://assets1.lottiefiles.com/packages/lf20_dauput1g.json"),) ,
    );
  }
}