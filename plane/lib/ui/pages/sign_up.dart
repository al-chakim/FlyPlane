

import 'package:flutter/material.dart';
import 'package:plane/ui/widgets/custom_button.dart';
import '../../shared/theme.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {

    Widget inputSection(){

      Widget nameInput(){
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Full Name'),
              SizedBox(height: 6,),
              TextFormField(
                cursorColor: item,
                decoration: InputDecoration(
                  hintText: 'Your full name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(color: ungu)
                  )
                ),
              )
            ],
          ),
        );
      }

      Widget emailInput(){
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Email Address'),
              SizedBox(height: 6,),
              TextFormField(
                cursorColor: item,
                decoration: InputDecoration(
                  hintText: 'Your email address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(color: ungu)
                  )
                ),
              )
            ],
          ),
        );
      }

      Widget passInput(){
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Password'),
              SizedBox(height: 6,),
              TextFormField(
                cursorColor: item,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(color: ungu)
                  )
                ),
              )
            ],
          ),
        );
      }

      Widget hobiInput(){
        return Container(
          margin: EdgeInsets.only(bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hobby'),
              SizedBox(height: 6,),
              TextFormField(
                cursorColor: item,
                decoration: InputDecoration(
                  hintText: 'Your Hobby',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(color: ungu)
                  )
                ),
              )
            ],
          ),
        );
      }

      Widget submitButton(){
        return CustomButton(
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
          margin: EdgeInsets.all(50),
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