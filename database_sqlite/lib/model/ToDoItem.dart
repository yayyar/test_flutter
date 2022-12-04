import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ToDoItem extends StatelessWidget {
  int? _id;
  String? _itemName;
  String? _dateCreated;

  ToDoItem(this._itemName, this._dateCreated);

  ToDoItem.map(dynamic obj) {
    this._id = obj['id'];
    this._itemName = obj['itemName'];
    this._dateCreated = obj['dateCreated'];
  }

  int? get id => _id;
  String? get itemName => _itemName;
  String? get dateCreated => _dateCreated;

  Map<String, dynamic> toMap() {
    Map map = new Map<String, dynamic>();
    if (_id != null) {
      map['id'] = _id;
    }
    map['itemName'] = _itemName;
    map['dateCreated'] = _dateCreated;
    return map as Map<String, dynamic>;
  }

  ToDoItem.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._itemName = map['itemName'];
    this._dateCreated = map['dateCreated'];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _itemName!,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16.9,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5.0),
          child: Text(
            "Created on: $_dateCreated",
            style: new TextStyle(
              color: Colors.white70,
              fontSize: 13.5,
              fontStyle: FontStyle.italic,
            ),
          ),
        )
      ],
    );
  }
}
