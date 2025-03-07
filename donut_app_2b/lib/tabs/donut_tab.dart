import 'package:donut_app_2b/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  //Lista de Donas
  final List donutsOnSale = [ 
    //[DoonutFlavor, donutPlace,  donutPrice, donutColor, imageName]
    ["Ice Cream", "Kryspy Kreme", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "Dunkin donuts", "36", Colors.red,  "lib/images/strawberry_donut.png"],
    ["Grape Ape", "cotsco", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco","mixe", "95", Colors.brown, "lib/images/chocolate_donut.png"],
   ];

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder( //Grid View parametro para acomodar elementos en una cuadricula
      // Elementos de nuestra lista
      itemCount: donutsOnSale.length, //Numero de elementos itemCount
      padding: const EdgeInsets.all(18),
      //Organiza como distribuir
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( //
        //Numero de columnas
        crossAxisCount: 2,
        childAspectRatio: 1/1.5),
        
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPlace: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
        );
      });
  }
}