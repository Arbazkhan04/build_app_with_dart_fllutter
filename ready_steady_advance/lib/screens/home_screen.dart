import 'dart:js';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
      title: Text('My App'),
      backgroundColor:Colors.blue,
      actions: [
        IconButton(onPressed: ()=>show(context), icon: Icon(Icons.wifi))
      ],
      ),

     );
  }

  void show(BuildContext context){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Awesome Snackbar!'),
          ),
        );
   }
}