import 'package:flutter/material.dart';

class AnimatedListExample extends StatefulWidget {
  const AnimatedListExample({super.key});

  @override
  _AnimatedListExampleState createState() => _AnimatedListExampleState();
}

class _AnimatedListExampleState extends State<AnimatedListExample> {
  final List<String> _items = [];
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  @override
  void initState() {
    _loadItems();
    super.initState();
  }

  Future<void> _loadItems() async {
    for (String item in ['1', '2', '3', '4']) {
      // 1) Wait for one second
      await Future.delayed(const Duration(milliseconds: 300));
      // 2) Adding data to actual variable that holds the item.
      _items.add(item);
      // 3) Telling animated list to start animation
      _listKey.currentState!.insertItem(_items.length - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animated List Example'),
        ),
        body: AnimatedList(
          key: _listKey,
          initialItemCount: _items.length,
          itemBuilder: (context, index, animation) {
            return _buildItem(_items[index], index, animation);
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            _addItem();
          },
        ));
  }

  Widget _buildItem(String item, int index, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: ListTile(
        title: Text(item),
        trailing: IconButton(
            onPressed: () {
              _removeItem(index);
            },
            icon: const Icon(Icons.remove_circle)),
      ),
    );
    // RotationTransition
    // CurvedAnimation(
    // parent: animation,
    // curve: Curves.easeIn,
    // reverseCurve: Curves.easeInOut)
    // return SlideTransition(
    //   position: Tween<Offset>(
    //     begin: const Offset(-1, 0),
    //     end: const Offset(0, 0),
    //   ).animate(animation),
    //   child: Card(
    //     // color: Colors.primaries[index % Colors.primaries.length],
    //     child: ListTile(
    //       title: Text('Item $item'),
    //       trailing: IconButton(
    //           onPressed: () {
    //             _removeItem(index);
    //           },
    //           icon: const Icon(Icons.remove_circle)),
    //     ),
    //   ),
    // );
  }

  void _addItem() {
    final newIndex = _items.length;
    _items.add('Item ${newIndex + 1}');
    _listKey.currentState!.insertItem(newIndex);
  }

  void _removeItem(int index) {
    final removedItem = _items.removeLast();
    _listKey.currentState!.removeItem(
      index,
      (context, animation) => _buildItem(removedItem, index, animation),
    );
  }
}
