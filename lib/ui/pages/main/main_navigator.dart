import 'package:flutter/material.dart';
import 'package:flutter_application/ui/pages/main/demo_load_data/demo_load_data_page.dart';
import 'package:flutter_application/ui/pages/main/home/home_page.dart';
import 'package:flutter_application/utils/navigator_support.dart';

class MainNavigator extends StatefulWidget {
  const MainNavigator({Key? key}) : super(key: key);

  @override
  _MainNavigatorState createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  @override
  Widget build(BuildContext context) {
    return NavigatorSupport(
      initialRoute: HomePage.routeName,
      onGenerateRoute: (setting) {
        switch (setting.name) {
          case DemoLoadDataPage.routeName:
            return MaterialPageRoute(
              builder: (context) => const DemoLoadDataPage(),
            );
          default:
            return MaterialPageRoute(
              builder: (context) => const HomePage(),
            );
        }
      },
    );
  }
}
