import 'package:flutter/material.dart';

class Flexin extends StatefulWidget {
  const Flexin({super.key});

  @override
  State<Flexin> createState() => _FlexinState();
}

class _FlexinState extends State<Flexin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(width:double.infinity,
            color: Colors.grey),
          ),
          Expanded(flex: 1,
            child: Container(width:double.infinity,
                color: Colors.black),
          ),
          Expanded(flex: 2,
            child: Container(width:double.infinity,
                color: Colors.grey),
          ),
        ],
      ),



    );
  }
}
