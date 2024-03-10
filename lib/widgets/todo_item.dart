import 'package:flutter/material.dart';
import 'package:flutter_todo/constants/colors.dart';
import 'package:flutter_todo/model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todoo;
  const ToDoItem({super.key, required this.todoo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print('Item clicked');
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todoo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tdBlue,
        ),
        title: Text(
          todoo.todoText!,
          style: TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration: todoo.isDone ? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            icon: Icon(Icons.delete),
            color: Colors.white,
            iconSize: 18,
            onPressed: () {
              print('Delete clicked');
            },
          ),
        ),
      ),
    );
  }
}
