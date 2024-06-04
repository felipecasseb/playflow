import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class CadastroView extends StatefulWidget {
  const CadastroView({super.key});

  @override
  State<CadastroView> createState() => _cadastroState();
}

class _cadastroState extends State<CadastroView> {
  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    final _nomeController = TextEditingController();
    final _passwordController = TextEditingController();
    final _confpasswordController = TextEditingController();

    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: Column(
           children: [
             Container(
               width: largura,
               height:80,
               color: const Color(0xFFF67803),
             ),
             Expanded(child:  Container(
               width: largura,
               height: 80,
               color: Colors.white,
               child: Column(
                 children: [
                   const SizedBox(height: 20,),
                   Center(
                     child: Container(
                       decoration: const BoxDecoration(
                         border: Border(
                           bottom: BorderSide(
                             width: 1,
                             color: Colors.black,

                           )
                         ),
                       ),
                       child: const Text
                         ('Dados Cadastrais',
                         style: TextStyle(
                           fontSize: 20,

                         ),
                       ),
                     ),

                   ),
                   const SizedBox(height: 30,),

                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20),
                     child: Container(
                       child: Column(
                         children: [
                           TextField(
                             controller: _emailController,
                             keyboardType: TextInputType.emailAddress,
                             decoration: const InputDecoration(
                               icon: Icon(
                                 Icons.mail_outline,
                                 size: 20,
                               ),
                               labelText: 'Cadastre seu email',
                               border: OutlineInputBorder(
                                   borderRadius: BorderRadius.zero),
                               hintText: 'Exemplo@gmail.com' ,


                             ),
                           ),
                            const SizedBox(height: 15,),
                           TextField(
                             controller: _nomeController,
                             keyboardType: TextInputType.name,
                             decoration: const InputDecoration(
                               icon: Icon(
                                 Icons.person_search_sharp,
                                 size: 20,
                               ),
                               labelText: 'Nome de Usuário',
                               border: OutlineInputBorder(
                                   borderRadius: BorderRadius.zero),

                             ),
                           ),
                          const SizedBox(height: 15,),

                           TextField(
                             controller: _passwordController,
                             keyboardType: TextInputType.visiblePassword,
                             decoration: const InputDecoration(
                               icon: Icon(
                                 Icons.lock_rounded,
                                 size: 20,
                               ),
                               labelText: 'Digite Sua Senha',
                               border: OutlineInputBorder(
                                   borderRadius: BorderRadius.zero),

                             ),
                             obscureText: true,
                           ),
                        const SizedBox(height: 15),
                           TextField(
                             controller: _confpasswordController,
                             keyboardType: TextInputType.visiblePassword,
                             decoration: const InputDecoration(
                               icon: Icon(
                                 Icons.lock_rounded,
                                 size: 20,
                               ),
                               labelText: 'Confirme sua Senha',
                               border: OutlineInputBorder(
                                   borderRadius: BorderRadius.zero),
                             ),
                             obscureText: true,
                           ),
                           const SizedBox(height: 5,),


                         SizedBox(
                           height: 10,
                           child: TextButton(onPressed: (){}, child:
                           const Text('Ao se registrar, você concorda com nossos Termos de Uso e nossa Políticas de Privacidade.',style: (TextStyle(fontSize: 8,
                           color: Colors.blue)),
                           ),
                             ),

                         ),
                           const SizedBox(height: 40),
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


                         ],

                       ),
                     ),
                   ),
                 ],
               ),
             ),
             ),
           ],
        ),
      ),

    );
  }
}
