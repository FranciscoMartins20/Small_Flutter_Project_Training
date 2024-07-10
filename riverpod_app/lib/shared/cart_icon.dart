import 'package:flutter/material.dart';
import 'package:riverpod_app/screens/cart/cart_screen.dart';

class CartIcon extends StatelessWidget{

const CartIcon ({super.key});

@override
Widget build(BuildContext context) {
  return Stack(
    children: [
      IconButton(
        icon: Icon(Icons.shopping_bag_outlined),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: 
          (context){
            return const CartScreen();
          }));
        },
      ),
      Positioned(
      top:5,
      left: 5,
      child: Container(
        width: 18,
        height: 18,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blueAccent,
        ),
      ),
      )
    
    ],
  );
}


}