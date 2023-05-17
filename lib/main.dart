// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import "package:flutter_aula_2/cadusuario.dart";
import "package:flutter_aula_2/data/perfil_sqlite_datasource.dart";
import "package:flutter_aula_2/tela1.dart";
import "package:flutter_aula_2/tela2.dart";
import "package:flutter_aula_2/recuperarsenha.dart";
import "package:flutter_aula_2/tela3.dart";
import "package:flutter_aula_2/cadcartao.dart";
import "package:flutter_aula_2/geradorsenhas.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: _Login(),
      ),
    );
  }
}

class _Login extends StatelessWidget {
  String email = '';
  String pass = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Tela de Login app',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(5, 5, 10, 200),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/512/3364/3364044.png'),
                //fit: BoxFit.fill,
              )),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Digite os dados',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              // ignore: prefer_const_constructors
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'e-mail',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              // ignore: prefer_const_constructors
              child: TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Senha',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    //return tela2();
                    return recuperarsenha();
                  }),
                );
              },
              child: const Text(
                'Esqueci a senha',
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Login'),
                onPressed: () async {
                  if (await perfilSQLiteDatasource()
                      .getPerfilLogin(email, pass)) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return tela1(email: email);
                    }));
                  }
                },
              ),
            ),
            Row(
              // ignore: sort_child_properties_last
              children: <Widget>[
                const Text('Não possui conta?'),
                TextButton(
                  child: const Text(
                    'Cadastre aqui',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return cadusuario();
                      }),
                    );
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}
