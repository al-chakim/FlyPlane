import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plane/cubit/auth_cubit.dart';
import 'package:plane/ui/pages/sign_up.dart';
import 'package:plane/ui/widgets/custom_button.dart';
import 'package:plane/ui/widgets/custom_form.dart';
import '../../shared/theme.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController(text: '');
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController = TextEditingController(text: '');
  final TextEditingController hobbyController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget inputSection() {
      
      Widget emailInput() {
        return CustomForm(
          title: 'Email Address',
          hintText: 'Your Email Address',
          controller: emailController,
        );
      }

      Widget passInput() {
        return CustomForm(
          title: 'Password',
          hintText: 'Password',
          obscureText: true,
          controller: passwordController,
        );
      }

      Widget submitButton() {
        return BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthSuccess) {
              Navigator.pushNamedAndRemoveUntil(
                context, '/bonus', (route) => false
              );
            } else if (state is AuthFailed) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: merah,
                  content: Text(state.error)
                )
              );
            }
          },
          builder: (context, state) {

            if (state is AuthLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            return CustomButton(
                margin: EdgeInsets.only(top: 15),
                title: 'Sign In',
                onPressed: () {

                  print(passwordController);

                  context.read<AuthCubit>().signUp(
                    email: emailController.text, 
                    name: nameController.text, 
                    password: passwordController.text,
                    hobby: hobbyController.text
                  );
                }
              );
          },
        );
      }

      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: putih, borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          children: [
            emailInput(),
            passInput(),
            submitButton(),
          ],
        ),
      );
    }

    Widget signUpButton() {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context, MaterialPageRoute(
              builder: (context) => SignUp()
            )
          );
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(30),
          child: Text(
            'Don\'t an account? Sign Up',
            style: greyTextStyle.copyWith(
                fontWeight: light,
                fontSize: 16,
                decoration: TextDecoration.underline),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bg,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(30),
              child: Text(
                'Sign in with your existing account',
                style:
                    blackTextStyle.copyWith(fontSize: 24, fontWeight: semibold),
              ),
            ),
            inputSection(),
            signUpButton(),
          ],
        ),
      ),
    );
  }
}
