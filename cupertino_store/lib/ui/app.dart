import 'package:cupertino_store/ui/tabs/product_list_tab.dart';
import 'package:cupertino_store/ui/tabs/search_tab.dart';
import 'package:cupertino_store/ui/tabs/shopping_cart_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CupertinoStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This app is designed only to work vertically, so we limit
    // orientations to portrait up and down.
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return CupertinoApp(
      theme: const CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoStoreHomePage(),
    );
  }
}

class CupertinoStoreHomePage extends StatelessWidget {
  const CupertinoStoreHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.shopping_cart),
            label: 'Cart',
          ),
        ],
      ),
      tabBuilder: (context, index){
        late final CupertinoTabView returnValue;
        switch(index){
          case 0:
            returnValue = CupertinoTabView(builder: (context){
              return CupertinoPageScaffold(child: ProductListTab());
            },);
            break;
          case 1:
            returnValue = CupertinoTabView(builder: (context){
              return CupertinoPageScaffold(child: SearchTab());
            },);
            break;
          case 2:
            returnValue = CupertinoTabView(builder: (context){
              return CupertinoPageScaffold(child: ShoppingCartTab());
            },);
            break;
        }
        return returnValue;
      },
    );
  }
}
