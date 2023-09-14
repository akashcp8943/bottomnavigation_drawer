import 'package:flutter/material.dart';
import 'package:flutter6/class1.dart';

class BottomNBAr extends StatefulWidget {
  const BottomNBAr({super.key});

  @override
  State<BottomNBAr> createState() => _BottomNBArState();
}

class _BottomNBArState extends State<BottomNBAr> {
  int _selectedIndex = 0;

  void _onitemtapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  List<dynamic>
  widgetOption=[
    //Listvi(),
    Center(child: Text("home")),
    Center(child: Text("search")),
    Center(child: Text("profile")),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Navigation Bottom Bar')),backgroundColor:Colors.grey),
      body:widgetOption.elementAt(_selectedIndex),
      backgroundColor: Colors.grey,
      bottomNavigationBar:BottomNavigationBar(
        items: [BottomNavigationBarItem(
          icon:Icon(Icons.home),
          label:("home"),
          backgroundColor: Colors.black12
        ),
          BottomNavigationBarItem(
              icon:Icon(Icons.search),
              label:("search"),
              backgroundColor: Colors.black12
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.person),
              label:("profile"),
              backgroundColor: Colors.black12
          ),

        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.lightBlueAccent,
        onTap:_onitemtapped,
        elevation: 5

      ),

    );
  }
}
