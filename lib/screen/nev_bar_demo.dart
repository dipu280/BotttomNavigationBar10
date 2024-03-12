import 'package:bot_nabi_bar10/screen/nev_bar/category.dart';
import 'package:bot_nabi_bar10/screen/nev_bar/home.dart';
import 'package:bot_nabi_bar10/screen/nev_bar/product.dart';
import 'package:bot_nabi_bar10/screen/nev_bar/profile.dart';
import 'package:flutter/material.dart';

class NevBarDemo extends StatefulWidget {
  const NevBarDemo({super.key});

  @override
  State<NevBarDemo> createState() => _NevBarDemoState();
}

class _NevBarDemoState extends State<NevBarDemo> {

  List<Widget> pages=[
    Category(),
    Home(),
    Product(),
    Profile()
  ];
int currentIndex=1;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
       //showUnselectedLabels: true,
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
        },
        currentIndex: currentIndex,
        items: [
        BottomNavigationBarItem(
          icon: Icon(currentIndex==0? Icons.category:Icons.category_outlined),
          label: "Category",
          backgroundColor: Colors.amber
          ),
        BottomNavigationBarItem(
          icon: Icon(currentIndex==1?Icons.home:Icons.home_outlined),
          label: "Home",
          backgroundColor: Colors.amber
          ),
        BottomNavigationBarItem(
          icon: Icon(currentIndex==2?Icons.screen_search_desktop_rounded:Icons.screen_search_desktop_outlined),
          label: "Product",
          backgroundColor: Colors.amber
          ),
        BottomNavigationBarItem(
          icon: Icon(currentIndex==3?Icons.person:Icons.person_3_outlined),
          label: "Person",
          backgroundColor: Colors.amber
          ),
          ]),
    );
  }
}