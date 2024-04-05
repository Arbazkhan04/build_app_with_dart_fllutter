import 'dart:html';

import 'package:flutter/material.dart';
import 'package:projects/Modals/todo.dart';
import 'package:projects/screens/detail_sereen.dart';

class TodoItem extends StatelessWidget{

  const TodoItem({super.key,required this.todos});
  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Todo App'),
        ),
        body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(todos[index].title),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=> DetailScreen(todo: todos[index])
                    )
                   );
              }
            );
          },
        ),
      );
  }
  
}