import 'package:flutter/material.dart';

class OnboardPage extends StatefulWidget {
  static const routeName = 'OnboardPage';

  const OnboardPage({Key? key}) : super(key: key);

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

class _OnboardPageState extends State<OnboardPage> {
  static const tag = 'OnboardPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: const Text("OnboardPage"),
        ),
      ),
    );
  }
}
