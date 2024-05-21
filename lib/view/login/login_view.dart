
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Login());
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    return Column(
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
    );


  }
}
