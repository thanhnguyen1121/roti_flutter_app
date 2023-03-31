import 'package:flutter/material.dart';

class ConfigurePage extends StatefulWidget {
  static const routeName = 'ConfigurePage';

  const ConfigurePage({Key? key}) : super(key: key);

  @override
  State<ConfigurePage> createState() => _ConfigurePageState();
}

class _ConfigurePageState extends State<ConfigurePage> {
  static const tag = 'ConfigurePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: const Text("ConfigurePage"),
        ),
      ),
    );
  }
}
