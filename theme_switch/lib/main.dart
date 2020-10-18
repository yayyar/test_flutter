import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

//https://stackoverflow.com/a/53107519/10409567
void main() async {
  // load the shared preferences from disk before the app is started
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();

  // create new theme controller, which will get the currently selected from shared preferences
  final themeController = ThemeController(prefs);

  runApp(MyApp(themeController: themeController));
}

class MyApp extends StatelessWidget {
  final ThemeController themeController;

  const MyApp({Key key, this.themeController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // use AnimatedBuilder to listen to theme changes (listen to ChangeNotifier)
    // the app will be rebuilt when the theme changes
    return AnimatedBuilder(
      animation: themeController,
      builder: (context, _) {
        // wrap app in inherited widget to provide the ThemeController to all pages
        return ThemeControllerProvider(
          controller: themeController,
          child: MaterialApp(
            title: 'Flutter Demo',
            theme: _buildCurrentTheme(),
            home: MyHomePage(),
          ),
        );
      },
    );
  }

  // build the flutter theme from the saved theme string
  ThemeData _buildCurrentTheme() {
    switch (themeController.currentTheme) {
      case "dark":
        return ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.blue,
            primaryColor: Colors.blue,
            accentColor: Colors.white);
      case "redlight":
        return ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.red,
        );
      case "reddark":
        return ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.red,
          primaryColor: Colors.red,
        );
      case "light":
      default:
        return ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
        );
    }
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ThemeController themeController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('theme switcher'),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Center(
          child: Column(
            children: <Widget>[
              FloatingActionButton.extended(
                backgroundColor: Colors.blue,
                label: Text('blue light'),
                onPressed: () {
                  ThemeController.of(context).setTheme('light');
                },
              ),
              SizedBox(
                height: 10,
              ),
              FloatingActionButton.extended(
                backgroundColor: Colors.blue,
                label: Text(
                  'blue dark',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  ThemeController.of(context).setTheme('dark');
                },
              ),
              SizedBox(
                height: 10,
              ),
              FloatingActionButton.extended(
                backgroundColor: Colors.red,
                label: Text('redlight'),
                onPressed: () {
                  ThemeController.of(context).setTheme('redlight');
                },
              ),
              SizedBox(
                height: 10,
              ),
              FloatingActionButton.extended(
                backgroundColor: Colors.red,
                label: Text(
                  'red dark',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  ThemeController.of(context).setTheme('reddark');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// provides the currently selected theme, saves changed theme preferences to disk
class ThemeController extends ChangeNotifier {
  static const themePrefKey = 'theme';

  ThemeController(this._prefs) {
    // load theme from preferences on initialization
    _currentTheme = _prefs.getString(themePrefKey) ?? 'light';
  }

  final SharedPreferences _prefs;
  String _currentTheme;

  /// get the current theme
  String get currentTheme => _currentTheme;

  void setTheme(String theme) {
    _currentTheme = theme;

    // notify the app that the theme was changed
    notifyListeners();

    // store updated theme on disk
    _prefs.setString(themePrefKey, theme);
  }

  /// get the controller from any page of your app
  static ThemeController of(BuildContext context) {
    final provider =
    context.inheritFromWidgetOfExactType(ThemeControllerProvider)
    as ThemeControllerProvider;
    return provider.controller;
  }
}

/// provides the theme controller to any page of your app
class ThemeControllerProvider extends InheritedWidget {
  const ThemeControllerProvider({Key key, this.controller, Widget child})
      : super(key: key, child: child);

  final ThemeController controller;

  @override
  bool updateShouldNotify(ThemeControllerProvider old) =>
      controller != old.controller;
}

///Exception has occurred.
//FlutterError (ServicesBinding.defaultBinaryMessenger was accessed before the binding was initialized.
//If you're running an application and need to access the binary messenger before `runApp()` has been called (for example, during plugin initialization), then you need to explicitly call the `WidgetsFlutterBinding.ensureInitialized()` first.
//If you're running a test, you can call the `TestWidgetsFlutterBinding.ensureInitialized()` as the first line in your test's `main()` method to initialize the binding.)
//solved by WidgetsFlutterBinding.ensureInitialized();