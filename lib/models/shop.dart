import 'package:bubble_tea/models/drink.dart';
import 'package:flutter/material.dart';

class BubbleTeaShop extends ChangeNotifier
{
  final List<Drink> _shop=
  [
    Drink(name: "Ginger Tea", price: "Rs 50", imagePath: "assets/images/ginger_tea.png"),
    Drink(name: "Green Tea", price: "Rs 30", imagePath: "assets/images/yellow-tea.png"),
    Drink(name: "Red Tea", price: "Rs 45", imagePath: "assets/images/red_tea.png"),
    Drink(name: "White Tea", price: "Rs 30", imagePath: "assets/images/white_tea.png"),



  ];
  //list of drinks in user cart
  final List<Drink> _userCart=[];

  //get drinks for sale
  List<Drink> get shop=>_shop;

  //get user_cart
  List<Drink> get cart=>_userCart;

  //add to cart

  void addToCart(Drink drink)
  {
    _userCart.add(drink);
    notifyListeners();
  }

  //Remove drink from cart

  void removeFromCart(Drink drink)
  {
    _userCart.remove(drink);
    notifyListeners();
  }

}