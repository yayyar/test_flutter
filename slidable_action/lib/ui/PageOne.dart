import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  SlidableController slidableController;
  final List<_PageItem> items = List.generate(
    20,
    (i) => _PageItem(
      i,
      'Title $i',
      'sub $i',
      Colors.blue,
    ),
  );

  @protected
  void initState() {
    slidableController = SlidableController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page One'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context,index){
          return _generateSlidableList(context,index);
        },
      ),
    );
  }

  Widget _generateSlidableList(BuildContext context, int index) {
    final _PageItem item = items[index];
    return Slidable(
      key: Key(item.title),
      controller: slidableController,
      direction: Axis.horizontal,
      dismissal: SlidableDismissal(
        child: SlidableDrawerDismissal(),
        onDismissed: (actionType) {
          _showSnackBar(
              context,
              actionType == SlideActionType.primary
                  ? 'Dismiss Archive'
                  : 'Dismiss Delete');
          setState(() {
            items.removeAt(index);
          });
        },
      ),
      // SlidableBehindActionPane
      // SlidableStrechActionPane ,
      // SlidableScrollActionPane,
      // SlidableDrawerActionPane
      actionPane: SlidableBehindActionPane(),
      actionExtentRatio: 0.2, // value that between 0 and 1 , 0 <= value <= 1
      child: VerticalListItem(items[index]),
      actions: <Widget>[
        IconSlideAction(
          caption: 'Archive',
          color: Colors.blue,
          icon: Icons.archive,
          onTap: () => _showSnackBar(context, 'Archive'),
        ),
        IconSlideAction(
          caption: 'Share',
          color: Colors.indigo,
          icon: Icons.share,
          onTap: () => _showSnackBar(context, 'Share'),
        ),
      ],
      secondaryActions: <Widget>[
        Container(
          height: 800,
          color: Colors.green,
          child: Text('Sample',
          style: TextStyle(
            color: Colors.white
          ),),
        ),
        IconSlideAction(
          caption: 'More',
          color: Colors.grey.shade200,
          icon: Icons.more_horiz,
          onTap: () => _showSnackBar(context, 'More'),
          closeOnTap: false,
        ),
        IconSlideAction(
          caption: 'Delete',
          color: Colors.red,
          icon: Icons.delete,
          onTap: () {
            _showSnackBar(context, 'Delete');
            setState(() {
              items.removeAt(index);
            });
          },
        ),
      ],
    );
  }

  void _showSnackBar(BuildContext context, String text) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
}
class VerticalListItem extends StatelessWidget {
  VerticalListItem(this.item);
  final _PageItem item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
      Slidable.of(context)?.renderingMode == SlidableRenderingMode.none
          ? Slidable.of(context)?.open()
          : Slidable.of(context)?.close(),
      child: Container(
        color: Colors.white,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: item.color,
            child: Text('${item.index}'),
            foregroundColor: Colors.white,
          ),
          title: Text(item.title),
          subtitle: Text(item.subtitle),
        ),
      ),
    );
  }
}
class _PageItem {
  const _PageItem(
    this.index,
    this.title,
    this.subtitle,
    this.color,
  );

  final int index;
  final String title;
  final String subtitle;
  final Color color;
}
