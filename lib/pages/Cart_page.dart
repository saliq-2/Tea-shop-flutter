

import 'package:bubble_tea/models/drink.dart';
import 'package:bubble_tea/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Cart_page extends StatefulWidget
{

  @override
  State<Cart_page> createState() => _Cart_pageState();
}

class _Cart_pageState extends State<Cart_page> {
    //Remove drink
  void removeFromCart(Drink drink)
  {
    Provider.of<BubbleTeaShop>(context,listen: false).removeFromCart(drink);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<BubbleTeaShop>(
      builder: (context,value,child)=>
      // backgroundColor: Colors.brown.shade200,
       Column(
        children: [
          SafeArea(
              child: Text("Cart")),

          Expanded(

              child: ListView.builder(
                  itemCount: value.cart.length,
                  itemBuilder: (context,index){
                   Drink drink=value.cart[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ElevatedButton(
                            child: ListTile(
                                title: Text(drink.name),
                            subtitle: Text(drink.price),
                            leading: Image.asset(drink.imagePath),
                            trailing: Icon(Icons.delete),


                            ),
                              onPressed: (){
                              removeFromCart(drink);
                              },

                          ),
                        ],
                      ),
                    );


                    })),
        ],
      ),


    );
  }
}