import 'package:flutter/material.dart';
import 'package:flutter6/class1.dart';
import 'package:flutter6/flex.dart';
import 'package:flutter6/navigationbottom.dart';

class PageDrawer extends StatefulWidget {
  const PageDrawer({super.key});

  @override
  State<PageDrawer> createState() => _PageDrawerState();
}

class _PageDrawerState extends State<PageDrawer> {
  int selectedIndex=0;

  void onitemtapped(int index){
    setState(() {
      selectedIndex = index;

    });
  }
List nm=[
  BottomNBAr(),
  Listvi(),
  Flexin(),
  Text("feedback")
];

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(title:Text("Drawer",style: TextStyle(fontWeight: FontWeight.bold),),backgroundColor: Colors.lightBlueAccent),
      body: nm.elementAt(selectedIndex),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title:Text('home'),
             trailing: Icon(Icons.home),
             selected: selectedIndex==0,

            onTap: () {
                onitemtapped(0);
                Navigator.pop(context);

            },),
            ListTile(
              title:Text('data'),
              selected: selectedIndex==1,

              onTap: () {onitemtapped(1);
                Navigator.pop(context);

              },),
            ListTile(
              title:Text('setting'),
              trailing: Icon(Icons.settings),
              selected: selectedIndex==2,

              onTap: () {onitemtapped(2);
                Navigator.pop(context);

              },),
            ListTile(
              title:Text('feedback'),
              trailing: Icon(Icons.account_box_outlined),
              selected: selectedIndex==3,

              onTap: () {onitemtapped(3);
                Navigator.pop(context);

              },),
          ],
        ),
      ),
    );
  }
}






