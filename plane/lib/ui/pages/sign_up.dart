import 'package:flutter/material.dart';
import 'package:plane/ui/widgets/custom_button.dart';
import 'package:plane/ui/widgets/custom_form.dart';
import '../../shared/theme.dart';

class SignUp extends StatelessWidget {
  SignUp({ Key? key }) : super(key: key);

  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController hobbyController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {

    Widget inputSection(){

      Widget nameInput(){
        return CustomForm(
          title: 'Full Name', 
          hintText: 'Your Full Name',
          controller: nameController,
        );
      }

      Widget emailInput(){
        return CustomForm(
          title: 'Email Address', 
          hintText: 'Your Email Address',
          controller: emailController,
        );
      }

      Widget passInput(){
        return CustomForm(
          title: 'Password', 
          hintText: 'Password',
          obscureText: true,
          controller: passwordController,
        );
      }

      Widget hobiInput(){
        return CustomForm(
          title: 'Hobby', 
          hintText: 'Your Hobby',
          controller: hobbyController,
        );
      }

      Widget submitButton(){
        return CustomButton(
          margin: EdgeInsets.only(top: 15),
          title: 'Get Started', 
          onPressed: (){
            Navigator.pushNamed(context, '/bonus');
          }
        );
      }

      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30
        ),
        decoration: BoxDecoration(
          color: putih,
          borderRadius: BorderRadius.circular(defaultRadius)
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passInput(),
            hobiInput(),
            submitButton(),
          ],
        ),
      );
    }

    Widget tacButton(){
        return Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(30),
          child: Text(
            'Terms and Conditions',
            style: greyTextStyle.copyWith(
              fontWeight: light,
              fontSize: 16,
              decoration: TextDecoration.underline
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
                'Join us and get\nyour next journey',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semibold
                ),
              ),
            ),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}