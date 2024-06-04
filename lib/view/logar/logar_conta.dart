import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playflow/view/cadastro/cadastro_view.dart';


class LogarConta extends StatefulWidget {

  const LogarConta({super.key});

  @override
  State<LogarConta> createState() => _LogarState();
}

class _LogarState extends State<LogarConta> {
  void teste(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CadastroView())
    );
  }
  @override


  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;
    return MaterialApp(
      theme: ThemeData( visualDensity: VisualDensity.adaptivePlatformDensity,),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: largura,
                height: 130,
                color: Color(0xFFF67803),
              ),
              Container(
                width: largura,
                height: altura,
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(height: 15),
                    Image.asset('imagens/Logotipo.png',
                        height: 200, width: 230),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold,



                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Expanded(
                        child: Column(
                          children: [
                            TextField(
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                icon: Icon(
                                  Icons.mail_outline,
                                  size: 20,
                                ),
                                labelText: 'Email',
                                hintText: 'exemplo@gmail.com',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.zero),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            TextField(
                              controller: passwordController,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: const InputDecoration(
                                icon: Icon(
                                  Icons.lock,
                                  size: 20,
                                ),
                                hintText: 'Senha',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.zero),
                              ),
                            ),
                            const SizedBox(
                              height:2,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {},
                                child: const Text('Esqueci minha senha',style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.lightBlue
                                ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),

                            SizedBox(
                              width: 200,
                              height: 40,
                              child: TextButton(onPressed: (){},
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.blue
                                ),



                                child:const Text('Acessar',style: TextStyle(
                                color: Colors.white,

                                ),
                                ),
                              ),
                            ),


                        const SizedBox(height: 5),// estava 30, porém estava dando erro de over flow
                            Row(
                              children: [
                                const Text('Ainda não tem uma conta?'),
                                TextButton(
                                  onPressed: () {
                                 teste();
                                  },
                                  child: const Text(
                                    'Cadastre-se',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      color: Colors.lightBlue,
                                    ),

                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
