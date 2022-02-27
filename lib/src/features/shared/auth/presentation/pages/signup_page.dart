import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../../core/configs/app_configs.dart';
import '../../../../../core/constants/constraints/constraints.dart';
import '../../../../../core/utils/validators/validator.dart';
import '../../domain/dtos/auth_dtos.dart';
import '../blocs/auth_bloc/auth_bloc.dart';

const _kMinPasswordLength = 6;
const _kMaxPasswordLength = 14;

/// {@template login_page}
/// Signup Page with email, password and a full name field.
/// {@endtemplate}
class SignupPage extends StatefulWidget {
  /// {@macro login_page}
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  /// Holds the value of email text field.
  late TextEditingController _emailController;

  /// Holds the value of password text field.
  late TextEditingController _passwordController;

  /// Holds the value of full name text field.
  late TextEditingController _fullNameController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _fullNameController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(AppConstraints.largeSpace),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: AppConstraints.maxTextFieldWidth,
            ),
            child: Form(
              child: BlocConsumer<AuthBloc, AuthState>(
                  key: const ValueKey("signup_form_fields"),
                  listener: (context, state) {
                    /// If the state is [AuthState.unauthenticated]
                    /// then show the error message.
                    state.whenOrNull(unauthenticated: (message, code) {
                      if (message == null) return;
                      messenger.showSnackBar(
                        SnackBar(
                          content: Text(message),
                        ),
                      );
                    });
                  },
                  builder: (context, state) {
                    /// If the form is in loading state,
                    /// show a loading indicator.
                    final loading = state.maybeWhen(
                      orElse: () => false,
                      initial: () => true,
                    );

                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          localization.appName,
                          style: textTheme.headline2?.copyWith(
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        Text(
                          localization.createAccountTitle,
                          style: textTheme.titleMedium,
                        ),
                        const Gap(AppConstraints.largeSpace),
                        TextFormField(
                          controller: _fullNameController,
                          decoration: InputDecoration(
                            labelText: localization.fullName,
                          ),
                          textInputAction: TextInputAction.next,
                          validator: const FormValidator([
                            RequiredValidator(),
                          ]),
                          enabled: !loading,
                          autofocus: true,
                        ),
                        const Gap(AppConstraints.mediumSpace),
                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            labelText: localization.email,
                          ),
                          textInputAction: TextInputAction.next,
                          validator: const FormValidator([
                            RequiredValidator(),
                            EmailValidator(),
                          ]),
                          enabled: !loading,
                        ),
                        const Gap(AppConstraints.mediumSpace),
                        TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            labelText: localization.password,
                            helperText: localization.passwordHelper,
                          ),
                          maxLength: _kMaxPasswordLength,
                          obscureText: true,
                          onFieldSubmitted: (_) => _createAccount(context),
                          textInputAction: TextInputAction.done,
                          validator: const FormValidator([
                            RequiredValidator(),
                            MinimumLengthValidator(
                              minLength: _kMinPasswordLength,
                            ),
                            MaximumLengthValidator(
                              maxLength: _kMaxPasswordLength,
                            ),
                          ]),
                          enabled: !loading,
                        ),
                        const Gap(AppConstraints.mediumSpace),
                        ElevatedButton(
                          onPressed:
                              loading ? null : () => _createAccount(context),
                          child: loading
                              ? const SizedBox.square(
                                  dimension: AppConstraints.largeSpace,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                  ),
                                )
                              : Text(localization.createAccount),
                        ),
                      ],
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }

  void _createAccount(BuildContext context) {
    final formState = Form.of(context);

    if (formState == null) return;

    if (formState.validate()) {
      context.read<AuthBloc>().add(
            AuthEvent.createAccount(
              SignupDTO(
                name: _fullNameController.text,
                email: _emailController.text,
                password: _passwordController.text,
              ),
            ),
          );
    }
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
