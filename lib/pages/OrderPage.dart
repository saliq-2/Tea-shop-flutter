import 'package:bubble_tea/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/drink.dart';
class OrderPage extends StatefulWidget
{
  final Drink drink;
  OrderPage(
      {
      super.key,required this.drink,
      }
      );

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  //double sweetValue=0.5;
  double Sugar=0.3;
  double salt=0.7;
  double milk=0.3;
  void customizeSweet(double value) {
    setState(() {

        milk=value;
    });
  }
  void customizeIce(double value) {
    setState(() {

      Sugar=value;
    });
  }
  void customizepearls(double value) {
    setState(() {

      salt=value;
    });
}



  void addToCart() {
    Provider.of<BubbleTeaShop>(context, listen: false).addToCart(widget.drink);


    //direct user to back the shop page
    Navigator.pop(context);

    //Let user know every thing has been succesfullt added

    showDialog(context: context, builder: (context) =>
        AlertDialog(
          title: Text("Successfully added to cart"),
        ),);
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.drink.name),
        ),
        backgroundColor: Colors.brown.shade200,
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(widget.drink.imagePath),


              ),

              //sliders

              //SWEET

              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Milk"),
                      ),

                      Expanded(
                        child: Slider(
                            label: milk.toString(),

                            value: milk,
                            divisions: 4,
                            onChanged: (value) {
                              customizeSweet(value);
                            }),
                      )
                    ],
                  ),


                  //salt


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("salt     "),
                      ),

                      Expanded(
                        child: Slider(
                            label: salt.toString(),

                            value: salt,
                            divisions: 4,
                            onChanged: (value) {
                              customizeIce(value);
                            }),
                      )
                    ],
                  ),


                  //PearlS


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Sugar"),
                      ),

                      Expanded(
                        child: Slider(
                            label: Sugar.toString(),

                            value: Sugar,
                            divisions: 4,
                            onChanged: (value) {
                              customizepearls(value);
                            }),
                      ),

                    ],
                  ),





                ],
              ),
              // SizedBox(
              //   height: 10,
              // ),

              Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.9,
                  height: MediaQuery
                      .of(context)
                      .size
                      .width * 0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: ElevatedButton(onPressed: () {
                    addToCart();
                  }, child: Text("Add to Cart"))),
            ],

          ),

        ),

      );
    }
  }

