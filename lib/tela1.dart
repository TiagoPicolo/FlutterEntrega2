// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import "package:flutter_aula_2/cadcartao.dart";
import "package:flutter_aula_2/geradorsenhas.dart";
import "package:flutter_aula_2/cadsenhas.dart";
import 'listasenha.dart';

import "PerfilUsuario.dart";

class tela1 extends StatefulWidget {
  final String email;
  const tela1({Key? key, required this.email}) : super(key: key);

  @override
  _tela1 createState() {
    return _tela1();
  }
}

class _tela1 extends State<tela1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            // ignore: prefer_const_constructors
            UserAccountsDrawerHeader(
              accountName: Text("Usuario"),
              accountEmail: Text("usuario@gmail.com"),
              currentAccountPicture: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/512/3364/3364044.png'),
                backgroundColor: Colors.transparent,
              ), // Circlenvatar
            ),

            ListTile(
                leading: Icon(Icons.star),
                title: Text("Favoritos"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  debugPrint('toquei no drawer');
                }), // ListTile
            ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Perfil"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: Icon(Icons.credit_card_outlined),
                title: Text("Cadastro de Cartões"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return cadcartoes();
                    },
                  ));
                }),
            ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Cadastro de senhas"),
                subtitle: Text("cadastre suas senhas..."),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return listaSenhas();
                  }));
                }),
            ListTile(
                leading: Icon(Icons.password),
                title: Text("Gerador de Senhas"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return geradorSenha();
                    },
                  ));
                }),

            ListTile(
                leading: Icon(Icons.data_usage_rounded),
                title: Text("Perfil Usuario"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return perfilUsuario();
                    },
                  ));
                }),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Tela Principal"),
      ),
    ));
  }
}
