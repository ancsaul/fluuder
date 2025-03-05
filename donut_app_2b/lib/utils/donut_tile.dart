import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice; 
  final dynamic donutColor; //dynamic será un tipo de color
  final String imageName;

  const DonutTile({super.key, required this.donutFlavor, required this.donutPrice, this.donutColor, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[50],
        borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [

            //PriceTag
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutColor [200],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24),
                    )),
                    padding: 
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 18),

                  child: Text('\$$donutPrice', 
                  style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18,
                    color: donutColor[800]
                  ),),

                )
              ],
            ),

            //donut Picture

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 24),
              child: Image.asset(imageName),)


            //Donut Text

            //love Icon + add button
            
          ],
        ),
      ),
    );
  }
}