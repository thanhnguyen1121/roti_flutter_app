import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  static const routeName = 'DashboardPage';

  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  static const tag = 'DashboardPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: const Text("DashboardPage"),
        ),
      ),
    );
  }
}
