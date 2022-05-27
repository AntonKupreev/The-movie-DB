// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_declarations, unused_import

import 'package:flutter/material.dart';
import 'package:themoviedb/ui/widgets.dart/auth/auht_model.dart';

import '../../Theme/button_style.dart';

class _FormWidget extends StatelessWidget {
  const _FormWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final model = AuthProvider.read(context)?.model;
    final textStyle =
        const TextStyle(fontSize: 20, color: Color.fromARGB(255, 61, 57, 57));

    final textFieldDecoration = const InputDecoration(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),

      //isCollapsed: true,*сжимает тектфилд
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _ErrorMassegeWidget(),
        Text(
          'UserName',
          style: textStyle,
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
            controller: model?.loginTextController,
            decoration: textFieldDecoration),
        SizedBox(
          height: 25,
        ),
        Text(
          'Passford',
          style: textStyle,
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          controller: model?.passwordTextController,
          decoration: textFieldDecoration,
          obscureText: true,
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            const _AuthButtonWidget(),
            SizedBox(
              width: 30,
            ),
            TextButton(
              onPressed: () {},
              style: AppButtonStyle.linkButton,
              child: Text('Reset password'),
            ),
          ],
        ),
      ],
    );
  }
}

class _AuthButtonWidget extends StatelessWidget {
  const _AuthButtonWidget();

  @override
  Widget build(BuildContext context) {
    final model = AuthProvider.watch(context)?.model;
    final color = const Color(0xFF212529);
    final onPressed =
        model?.canStartAuth == true ? () => model?.auth(context) : null;
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        textStyle: MaterialStateProperty.all(
          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 8,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text('Login'),
    );
  }
}

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login to your account'),
      ),
      body: ListView(
        children: [
          _Header(),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 16, color: Colors.black);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25,
          ),
          _FormWidget(),
          SizedBox(
            height: 25,
          ),
          Text(
            'In order to use the editihg and rating capabilities of TMDb, as well as get personal recommendations you will need to login to your account. If you do not have an account, registering for an account is if free and simple. Click here to get started. ',
            style: textStyle,
          ),
          TextButton(
            style: AppButtonStyle.linkButton,
            onPressed: () {},
            child: Text('Register'),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "If you signed up but didn't get your verification email, click here  to have it resent.",
            style: textStyle,
          ),
          TextButton(
            style: AppButtonStyle.linkButton,
            onPressed: () {},
            child: Text('verification email'),
          ),
        ],
      ),
    );
  }
}

class _ErrorMassegeWidget extends StatelessWidget {
  const _ErrorMassegeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final errorMasdage = AuthProvider.watch(context)?.model.errorMessage;
    if (errorMasdage == null) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Text(
        errorMasdage,
        style: TextStyle(color: Colors.red, fontSize: 20),
      ),
    );
  }
}
