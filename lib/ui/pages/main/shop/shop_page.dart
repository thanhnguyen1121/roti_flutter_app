import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  static const routeName = 'ShopPage';

  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  static const tag = 'ShopPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: const Text("ShopPage"),
        ),
      ),
    );
  }
}
