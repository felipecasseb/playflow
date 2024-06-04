import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playflow/view/logar/logar_conta.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginState();
}

class _LoginState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    void chamaConta(){
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LogarConta())
      );
    }
    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: largura,
              height: 350,
              color: const Color(0xFFF67803),
              child: Center(
                child:  Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'imagens/teste.png',
                    height: 280,
                    width: 290,
        
                  ),
                ),
        
              ),

        
            ),
            Column(
              children: [
                const SizedBox(height: 40,),
                Image.asset('imagens/Login_view2.png'),
                const SizedBox(
                  height: 23,
                ),
                const Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: Text(
                    'Organize seus boletos em um só lugar',
                    style: TextStyle(fontSize: 32, color: Color(0xFF585666)),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 80, //
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    color: const Color(0xFFE3E3E5),
                    height: 56,
                    child:  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextButton.icon(
                          onPressed: (){
                            chamaConta();
                          },
                          label: Text('Entra com o email', style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF666666)
                          ),
                          ),
                        icon: Icon(
                          Icons.mail,
                        ),
                      ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
