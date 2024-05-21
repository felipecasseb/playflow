
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginState();
}

class _LoginState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 40,
            child: Container(
              width: largura,
            color: Colors.deepOrange,
            child: Image.asset(
              'imagens/Login_view1.png',
            ),
            ),
          ),
          Expanded(
            flex: 60,
            child: Container(
              //width: largura,
              color: Colors.white,
              child: Column(
                children: [
                  Image.asset(
                      'imagens/Login_view2.png'),
                  Text('Organize '),
                ],
      
              ),
            ),
          ),
        ],
      ),
    );


  }
}
