import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/cart.dart';
import 'package:provider/provider.dart';

import '../models/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          //heading
          const Text(
            'My cart',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 10),
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            //get individual shoe 
            Shoe individualShoe = value.getUserCart()[index];

            //return the cart item
            return CartItem();

          },))
        ],
      ),) );
  }
}