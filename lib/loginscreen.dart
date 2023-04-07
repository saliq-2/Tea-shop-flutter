import 'package:bubble_tea/main.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class login_screen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.brown.shade200,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network("https://assets1.lottiefiles.com/packages/lf20_7zfgb7k9.json"),
          SizedBox(height: 100,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(


              decoration: InputDecoration(
                label: Text("Enter Email"),
                filled: true,
                fillColor: Colors.white70,
                suffixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),

                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,


              decoration: InputDecoration(
                  label: Text("Enter Password"),
                  filled: true,
                  fillColor: Colors.white70,
                  suffixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),

                  )
              ),
            ),
          ),
          SizedBox(
            width: 420,
            height: 60,
            child: ElevatedButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>home_page()));

            }, child: Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 25),),
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11),
              )),


            ),
          )
        ],
      ),
    );
  }
}