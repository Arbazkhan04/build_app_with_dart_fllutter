import 'package:flutter/material.dart';

class Responsive extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width; //size and widht of the screen
     return Container(
      child: Column(
        children: [
          Container(
             width: double.maxFinite,
             height: height*0.2,
             color: Colors.grey,
          ),
          Container(
             width: double.maxFinite,
             height: height*0.3,
             color: Colors.blue,
          ),
          Container(
             width: double.maxFinite,
             height: height*0.5,
             color:Colors.yellowAccent,
             child: Row(
              children: [
                Container(
                  height: double.maxFinite,
                  width: width/3,
                  color: Colors.blue,
                ),
                Container(
                  height: double.maxFinite,
                  width: width/3,
                  color: Color.fromARGB(255, 243, 177, 33),
                ),
                Container(
                  height: double.maxFinite,
                  width: width/3,
                  color: const Color.fromARGB(255, 33, 243, 121),
                ),
              ],
              ),
          )
        ],
      ),
     );
  }
}