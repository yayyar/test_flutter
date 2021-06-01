import 'package:cupertino_store/model/app_state_model.dart';
import 'package:cupertino_store/ui/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  return runApp(
    ChangeNotifierProvider<AppStateModel>(
      // why use .. instead of .
      create: (_) => AppStateModel()..loadProducts(),
      child: CupertinoStoreApp(),
    ),
  );
}
