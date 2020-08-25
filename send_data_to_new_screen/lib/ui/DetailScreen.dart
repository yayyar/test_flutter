import 'package:flutter/material.dart';
import 'package:send_data_to_new_screen/model/Todo.dart';

class DetailScreen extends StatelessWidget {
  //Method One----------
  // Declare a field that holds the Todo.
  //final Todo todo;

  // In the constructor, require a Todo.
  //DetailScreen({Key key, @required this.todo}) : super(key: key);
  // End Method One ---------
  @override
  Widget build(BuildContext context) {
    //Method Two
    final Todo _todo = ModalRoute.of(context).settings.arguments;

    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text(_todo.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(_todo.description),
      ),
    );
  }
}
