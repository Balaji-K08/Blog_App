import 'package:blog_app/core/utils/show_snackbar.dart';
import 'package:blog_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:blog_app/features/auth/presentation/pages/signup_page.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_grad_button.dart';
import 'package:blog_app/features/auth/presentation/widgets/authfield.dart';
import 'package:blog_app/core/themes/app_pallete.dart';
// import 'package:blog_app/features/blog/presentation/dummy.dart';
import 'package:blog_app/features/blog/presentation/pages/blog_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const LoginPage());

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  // final nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    // nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is AuthFailure) {
                // print("authfailed");
                showSnackBar(context, state.message);
              }
              if (state is AuthSuccess) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => BlogPage()),
                  (route) => false,
                );
                // print("AuthSUccess");
              }
            },
            builder: (context, state) {
              return Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text("Sign in.", style: TextStyle(fontSize: 50)),
                    SizedBox(height: 30),
                    // AuthField(hintText: "Username",textcontroller: nameController),
                    AuthField(
                      hintText: "E-mail",
                      textcontroller: emailController,
                    ),
                    AuthField(
                      hintText: "Password",
                      textcontroller: passwordController,
                      obstext: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AuthGradientButton(
                        buttonText: "Sign in",
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Navigator.pushReplacement(context,SignUpPage.route());
                            // print("Clicked on gradbutt");
                            // print(emailController.text.trim());
                            // print(passwordController.text.trim());
                            context.read<AuthBloc>().add(
                              AuthLogin(
                                email: emailController.text.trim(),
                                password: passwordController.text.trim(),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            //  push instead pushReplacement
                            context,
                            SignUpPage.route(),
                          );
                        },
                        child: RichText(
                          text: TextSpan(
                            text: 'Dont\'t have an account? ',
                            style: Theme.of(context).textTheme.titleMedium,
                            children: [
                              TextSpan(
                                text: 'Sign up',
                                style: Theme.of(
                                  context,
                                ).textTheme.titleMedium?.copyWith(
                                  color: AppPallete.gradient2,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
