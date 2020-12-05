import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'constants/route_names.dart';
import 'pages/gallery_page.dart';
import 'pages/home_page.dart';
import 'pages/settings_page.dart';
import 'pages/slideshow_page.dart';
import 'widgets/app_route_observer.dart';

//void main() => runApp(DemoApp());

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => DemoApp(),
  ));
}

class DemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.of(context).locale, // <--- /!\ Add the locale
      builder: DevicePreview.appBuilder,
      title: 'Responsive app with navigation drawer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        pageTransitionsTheme: PageTransitionsTheme(
          // makes all platforms that can run Flutter apps display routes without any animation
          builders: Map<TargetPlatform,
              _InanimatePageTransitionsBuilder>.fromIterable(
              TargetPlatform.values.toList(),
              key: (dynamic k) => k,
              value: (dynamic _) => const _InanimatePageTransitionsBuilder()),
        ),
      ),
      initialRoute: RouteNames.home,
      navigatorObservers: [AppRouteObserver()],
      routes: {
        RouteNames.home: (_) => const HomePage(),
        RouteNames.gallery: (_) =>  GalleryPage(),
        RouteNames.slideshow: (_) =>  SlideshowPage(),
        RouteNames.settings: (_) =>  SettingsPage()
      },
    );
  }
}

/// This class is used to build page transitions that don't have any animation
class _InanimatePageTransitionsBuilder extends PageTransitionsBuilder {
  const _InanimatePageTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
      PageRoute<T> route,
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return child;
  }
}