
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
              width: largura,
              color: Colors.white,
              child: Column(
                children: [
                const SizedBox(height: 100),
                  Image.asset(
                      'imagens/Login_view2.png'),
                const SizedBox(height: 30,),
                  const Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70),
                    child: Text('Organize seus boletos em um só lugar', style: TextStyle(
                    fontSize: 32,
                      color: Color(0xFF585666)
                    ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(

                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      color: Colors.grey,
                      height: 56,

                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.email,
                            ),
                            Expanded(child: Center(child: Text('Entra com email'))),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],

              ),
            ),
          ),
        ],
      ),
    );


  }
}
