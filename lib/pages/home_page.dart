import 'package:flutter/material.dart';

import '../utils/my_tab.dart';
import '../tab/donut_tab.dart';
import '../tab/burger_tab.dart';
import '../tab/pancake_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/smoothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required ThemeData theme});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> myTabs = [
    //donut tab
    const MyTab(
      iconPath: 'lib/icons/donut.png'),
    //burger tab
    const MyTab(
      iconPath: 'lib/icons/burger.png')
    //smoothie tab
    ,const MyTab(
      iconPath: 'lib/icons/smoothie.png')
    //pancake tab
    ,const MyTab(
      iconPath: 'lib/icons/pancakes.png')
    //pizza tab
    ,const MyTab(
      iconPath: 'lib/icons/pizza.png')

    ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length, 
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon (
            Icons.menu, 
          color: Colors.grey[800],
          )
          , actions: const
           [Padding(
            padding: EdgeInsets.only(right: 24.0),
            child:  Icon(Icons.person),
          )],
        ),
        body: Column(
          children: [
           //Texto "I want to eat
          const Padding(
             padding: EdgeInsets.all(24.0),
             child: Row(
             children: [
             Text("I want to ", style: TextStyle(fontSize: 24),),
             Text(
              "Eat",
              style: TextStyle(fontSize: 24, 
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline),
          )
          ],),),
           //Tab bar
          TabBar(tabs: myTabs), 
           //Tab bar view
           const Expanded(child: TabBarView(children: <Widget>[
            DonutTab(),
            BurgerTab(),
            SmoothieTab(),
            PancakeTab(),
            PizzaTab()
           ]))
      
           //Total del carrito
      
      ],),
      ),
    );
  }
}
