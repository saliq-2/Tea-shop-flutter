import 'package:bubble_tea/pages/OrderPage.dart';
import 'package:bubble_tea/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/drink.dart';
class Shop_page extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {



    void goToOrderpage(Drink drink)

    {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>OrderPage(drink: drink,)  ,) );
    }



    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.brown.shade200,
      body:Consumer<BubbleTeaShop>(
        builder: (context,value,child)
        =>SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(


              children: [
               Row(children:[
                 Text("  Tea Shop",style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold) ,),]),
              SizedBox(height: 15,),
             Expanded(

                 child: ListView.builder(
                   itemCount: value.shop.length,
                     itemBuilder: (context,index)=>
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                             height: 110,
                             child: ElevatedButton(
                               child: ListTile(
                  title: Text(value.shop[index].name),
                                 subtitle: Text(value.shop[index].price),
                                 leading: Image.asset(value.shop[index].imagePath),
                                 trailing: Icon(Icons.arrow_forward),



                        ),style: ElevatedButton.styleFrom(
                                 primary: Colors.brown.shade100,
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(11),
                               )




                             ),
                               onPressed: (){
                                 goToOrderpage(value.shop[index]);

                               },
                             ),
                           ),
                         )
                    )
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}