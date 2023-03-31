import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  static const routeName = 'NotificationPage';

  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  static const tag = 'NotificationPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: const Text("NotificationPage"),
        ),
      ),
    );
  }
}
