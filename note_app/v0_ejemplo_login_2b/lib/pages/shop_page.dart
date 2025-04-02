// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/cart.dart';
import 'package:flutter_application_1/models/shoe.dart';
import 'package:provider/provider.dart';

import '../components/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  
  //add shoe to cart
  void addShoeToCart(Shoe Shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(Shoe);

    //alert the user , shoes  successfully added
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text('successfully added¡'),
      content: Text('check your cart'),
    ),
    );
  }
///minuto 2:16 del video 

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child)=> Column(
      children: [
        //searhc bar
        Container(
          padding:  const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'search',
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),

        //mesage
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Text(
            'everyvone flies.. some fly longer than others',
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),

        //hot picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const[
              Text(
                'Hot Picks',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                )
                
              ),
              Text(
                'see all',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),


        //list of shoes for sale
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
              //get a  shoefrom a sho list
              Shoe shoe = value.getShoeList()[index];
              //return the shoe 
              return ShoeTile(
                shoe: shoe,
                onTap: () => addShoeToCart(shoe),
              );
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
          child: Divider(
            color: Colors.white,
          ),
        ),

      ],
    ),
    );
  }
}