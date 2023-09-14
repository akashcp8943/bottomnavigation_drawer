import 'package:flutter/material.dart';

class Firstui extends StatefulWidget {
  const Firstui({super.key});

  @override
  State<Firstui> createState() => _FirstuiState();
}

class _FirstuiState extends State<Firstui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.lightBlue,
        leading:IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_outlined)),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))],
      ),
      body:Stack(
        children: [
          Container(
            height: 300,
            width: 400,
            color: Colors.lightBlue,
            child: Padding(
              padding: const EdgeInsets.only(right: 160,),
              child: Column(
                children: [
                  Text("Aristocratic Hand Ba,",style: TextStyle(fontWeight: FontWeight.normal),
                  ),Text("office Code",style: TextStyle(fontWeight: FontWeight.w900),),
                  Padding(
                    padding: const EdgeInsets.only(top: 150,right: 100),
                    child: Text("price",style: TextStyle(fontWeight: FontWeight.w200),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:80),
                    child: Text("Rs234",style: TextStyle(fontSize:20),),
                  )
                ],
              ),
            ),

          ),
          Padding(
            padding: const EdgeInsets.only(top:260),
            child: Container(
              height: 500,
              width: 400,
              decoration: (BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(50),
                    topRight: Radius.circular(50),
                  )
              )),
            ),
          ),
        ],
      ),
    );
  }
}

