import 'package:flutter/material.dart';
import 'package:projects/Modals/todo.dart';
import 'package:projects/screens/Item_list.dart';

void main(){
  runApp(
    MaterialApp(
      home:TodoItem(
        //pass list of todo objects
        todos:List.generate(
          20,
          (i) => Todo('Todo $i','Description for todo item $i')
          )
      )
    )
  );
}