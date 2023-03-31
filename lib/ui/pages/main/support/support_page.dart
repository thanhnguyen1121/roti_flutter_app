import 'package:flutter/material.dart';

class SupportPage extends StatefulWidget {
  static const routeName = 'SupportPage';

  const SupportPage({Key? key}) : super(key: key);

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  static const tag = 'SupportPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: const Text("SupportPage"),
        ),
      ),
    );
  }
}
