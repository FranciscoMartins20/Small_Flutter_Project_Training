import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/providers/cart_provider.dart';


class CartScreen extends ConsumerStatefulWidget{

const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

  class _CartScreenState extends ConsumerState<CartScreen>{
    bool showCoupon = true;

    @override
    Widget build(BuildContext context) {

      final cartProducts = ref.watch(cartNotifierProvider);
      final total = ref.watch(cartTotalProvider);

      return Scaffold(
        appBar: AppBar(
          title: const Text('Cart'),
          centerTitle: true,
        ),
        body:Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Column(
                children: cartProducts.map((product){
                  return Container(
                    padding: const EdgeInsets.only(top: 10,bottom: 10),
                    child: Row(
                      children: [
                        Image.asset(product.image, width: 60, height: 60,),
                        const SizedBox(width:10),
                        Text('${product.title}'),
                        const Expanded(child: SizedBox()),
                        Text('${product.price}€'),

                      ],
                    ),
                  );
                }).toList(),
              ),
              Text('Total price : $total€')
            ],
          )
        )
      );
        }


  }



  



