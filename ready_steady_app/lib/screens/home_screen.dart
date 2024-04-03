import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ready_steady_app/widget/mybox.dart';


class HomeScreen extends StatelessWidget{
  double containerheight = 244;
  TextStyle myStyle = TextStyle(color: Colors.orange , fontWeight: FontWeight.bold , fontSize: 24);
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Text('My App');
=======
    return Container(
      margin: EdgeInsets.all(12.0),
      color: Colors.blue.shade100,
      child: Column(
        children: [
          Container(height: containerheight, width: double.maxFinite,
            color: Colors.black12,margin: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wifi),
                    SizedBox(height: 12,),
                    Text("03231231" ,style: myStyle,)
                  ],
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wifi),
                    SizedBox(height: 12,),
                    Text("03231231" ,style: myStyle,)
                  ],
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wifi),
                    SizedBox(height: 12,),
                    Text("03231231" ,style: myStyle,)
                  ],
                ),
                Spacer()
              ],
            ),),
          SizedBox(height: 15,),
          MyBox("Charging Cable" , 1000 , Colors.blue),
          SizedBox(height: 15,),
          MyBox("Mouse" , 1500, Colors.green),
          SizedBox(height: 15,),
          MyBox("Keyboard" , 3000, Colors.red),
        ],
      ),
    );
>>>>>>> 97c375ab3b21c0fd933f0ffb0f096ff9fd1bac40
  }

}