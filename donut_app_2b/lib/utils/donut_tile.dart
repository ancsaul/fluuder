import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutStore;
  final String donutPrice; 
  final dynamic donutColor; //dynamic será un tipo de color
  final String imageName;

  const DonutTile({super.key, required this.donutFlavor, required this.donutStore, required this.donutPrice, this.donutColor, required this.imageName});

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
              //Alinea a la derecha
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutColor[50],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 6),
                  child: Text('\$$donutPrice' , 
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: donutColor[800],),
                  ),
                )
              ],
            ),

            //Donut Picture
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 34),
              child: Image.asset(imageName),
            ),

            //Donut Text
            Text(donutFlavor,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            //Para tener un espacio entre textos
            const SizedBox(
              height: 4
            ),
            // Agregar texto a la tienda
            Text(donutStore,
            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
            ),

            //Love icon + add buton
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite_border, 
                    color: Colors.pink[200]
                  ),
                   
                const Text(
                  "Add",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  
                  ),
                ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}