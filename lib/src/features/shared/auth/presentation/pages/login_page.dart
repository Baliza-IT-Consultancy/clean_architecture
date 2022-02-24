import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/configs/app_configs.dart';
import '../../../../../core/constants/constraints/constraints.dart';
import '../../../../../core/utils/validators/validator.dart';

const _kMinPasswordLength = 6;
const _kMaxPasswordLength = 14;

/// {@template login_page}
/// Login Page
/// {@endtemplate}
class LoginPage extends StatefulWidget {
  /// {@macro login_page}
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  /// Holds the value of email text field.
  late TextEditingController _emailController;

  /// Hold the value of password text field.
  late TextEditingController _passwordController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: AppConstraints.maxTextFieldWidth,
          ),
          child: Form(
            child: Builder(
                key: const ValueKey("login_form_fields"),
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "TODO",
                        style: textTheme.headline2?.copyWith(
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Text(
                        "Login to your account",
                        style: textTheme.titleMedium,
                      ),
                      const Gap(AppConstraints.largeGap),
                      TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          labelText: "Email",
                        ),
                        validator: const FormValidator([
                          RequiredValidator(),
                          EmailValidator(),
                        ]),
                      ),
                      const Gap(AppConstraints.mediumGap),
                      TextFormField(
                        controller: _passwordController,
                        decoration: const InputDecoration(
                          labelText: "Password",
                          helperText: "Password must be at least 6 characters",
                        ),
                        maxLength: _kMaxPasswordLength,
                        obscureText: true,
                        validator: const FormValidator([
                          RequiredValidator(),
                          MinimumLengthValidator(
                            minLength: _kMinPasswordLength,
                          ),
                          MaximumLengthValidator(
                            maxLength: _kMaxPasswordLength,
                          ),
                        ]),
                      ),
                      const Gap(AppConstraints.mediumGap),
                      ElevatedButton(
                        onPressed: () => _login(context),
                        child: const Text("Login"),
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }

  _login(BuildContext context) {
    final formState = Form.of(context);

    if (formState == null) return;

    if (formState.validate()) {}
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
