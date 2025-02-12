import 'package:donut_app_2b/utils/my_tab.dart';
import 'package:flutter/material.dart';
 
class HomePage extends StatefulWidget {
  const HomePage({super.key});
 
  @override
  State<HomePage> createState() => _HomePageState();
}
 
class _HomePageState extends State<HomePage> {
  //lista de tabs
  List<Widget> myTabs = [
    MyTab(iconPath: 'lib/icons/donut.png'),

    MyTab(iconPath: 'lib/icons/burger.png'),

    MyTab(iconPath: 'lib/icons/smoothie.png'),

    MyTab(iconPath: 'lib/icons/pancakes.png'),

    MyTab(iconPath: 'lib/icons/pizza.png'),
    
    ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          // icono izquierdo
          leading: Icon(
            Icons.menu,
            color: Colors.pinkAccent[800],
          ),
          // Icono derecho
          actions: [Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Icon(Icons.person),
          )]
        ),
        body: Column(
          children:[
          //Texto principal
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Row(
                children: [
                  Text("I want to", style: TextStyle(
                    fontSize: 32 )),
                  Text("Eat",style: TextStyle(
                    //Tamaño de letra
                    fontSize: 32,
                    //Negritas
                    fontWeight: FontWeight.bold,
                    //Subrayado
                    decoration: TextDecoration.underline,
                    //Color de letra
                    color: Colors.pinkAccent[800]  
                    ) )
                ],
              ),
            )
       
          //TabBar
          TabBar(tabs: myTabs)
          //TabBarView
       
          //carrito
          ] )
      ),
    );
  }
}