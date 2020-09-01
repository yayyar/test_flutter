import 'package:database_sqlite/model/ToDoItem.dart';
import 'package:database_sqlite/util/DatabaseHelper.dart';
import 'package:database_sqlite/util/DateFormatter.dart';
import 'package:flutter/material.dart';

class ToDoList extends StatefulWidget {
  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  final TextEditingController _alertTextController =
      new TextEditingController();
  var db = new DatabaseHelper();
  final List<ToDoItem> _toDoList = <ToDoItem>[];

  _readToDoList() async {
    List items = await db.getAllItems();
    items.forEach((itemList) {
      setState(() {
        _toDoList.add(ToDoItem.map(itemList));
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _readToDoList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Column(
        children: [
          Flexible(
            child: new ListView.builder(
                itemCount: _toDoList.length,
                padding: EdgeInsets.all(8.0),
                reverse: false,
                itemBuilder: (_, int position) {
                  return Card(
                    color: Colors.white10,
                    child: new ListTile(
                      title: _toDoList[position],
                    ),
                  );
                }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.blueAccent,
        onPressed: _showFormDialog,
      ),
    );
  }

  //add new item
  void _showFormDialog() {
    _alertTextController.clear();
    var alert = new AlertDialog(
      title: new Text("Add new item"),
      content: new Row(
        children: <Widget>[
          new Expanded(
            child: new TextField(
              controller: _alertTextController,
              decoration: new InputDecoration(
                labelText: "Item",
                hintText: "eg: To study",
                icon: Icon(Icons.note_add),
              ),
            ),
          )
        ],
      ),
      actions: <Widget>[
        new FlatButton(
          onPressed: () {
            if (_alertTextController.text.isEmpty ||
                _alertTextController.text == null) {
              return;
            }
            _handleSubmit(_alertTextController.text);
          },
          child: Text("Save"),
        ),
        new FlatButton(
          onPressed: () => Navigator.pop(context),
          child: Text("Cancel"),
        )
      ],
    );
    showDialog(
        context: context,
        builder: (_) {
          return alert;
        });
  }

  void _handleSubmit(String text) async {
    ToDoItem _toDoItem = new ToDoItem(text, dateFormatted());
    int _savedItem = await db.saveItem(_toDoItem);
    print('Insert result=> $_savedItem');
    ToDoItem _addItem = await db.getItem(_savedItem);
    print('After insert=> ${_addItem.toMap()}');
    setState(() {
      _toDoList.insert(0, _addItem);
    });
    Navigator.pop(context);
  }
}
