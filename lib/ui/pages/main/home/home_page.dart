import 'package:flutter/material.dart';
import 'package:flutter_application/generated/l10n.dart';
import 'package:flutter_application/ui/blocs/auth/auth.dart';
import 'package:flutter_application/ui/pages/main/demo_load_data/demo_load_data_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'HomePage';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(S.current.home_page),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, DemoLoadDataPage.routeName);
              },
              child: const Text("Go to load data demo page"),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {
                context.read<AuthBloc>().logout();
              },
              child: const Text("Logout"),
            )
          ],
        ),
      ),
    );
  }
}
