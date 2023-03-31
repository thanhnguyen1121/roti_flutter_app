import 'package:flutter/cupertino.dart';

class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const CupertinoActivityIndicator(),
    );
  }
}
