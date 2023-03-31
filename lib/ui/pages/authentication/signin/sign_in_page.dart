import 'package:flutter/material.dart';
import 'package:flutter_application/ui/blocs/auth/auth.dart';
import 'package:flutter_application/ui/widgets/design_system/app_text_form_field_material_custom_icon.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../generated/l10n.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 120),
            AppTextFormFieldMaterialCustomIcon(
              hintText: S.current.user_name,
              controller: usernameController,
            ),
            const SizedBox(
              height: 12,
            ),
            AppTextFormFieldMaterialCustomIcon(
              hintText: S.current.password,
              controller: passwordController,
              isPassword: true,
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {
                context
                    .read<AuthBloc>()
                    .login(usernameController.text, passwordController.text);
              },
              child: Text(S.current.login),
            )
          ],
        ),
      ),
    );
  }
}
