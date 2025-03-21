import 'package:flutter/material.dart';

import '../components/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index){
              return ShoeTile();
            },
          ))

      ],
    );
  }
}