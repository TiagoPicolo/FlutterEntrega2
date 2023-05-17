// ignore_for_file: prefer_const_constructors

import 'package:flutter_aula_2/geradorsenhas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_aula_2/PerfilUsuario.dart';
import 'package:flutter_aula_2/cadsenhas.dart';

class cadcartoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
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
                }),
            ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Perfil"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: Icon(Icons.card_membership),
                title: Text("Cadastro de Cartões"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return cadcartoes();
                    }),
                  );
                }),
            ListTile(
                leading: Icon(Icons.lock),
                title: Text("Cadastro de Senhas"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return cadsenhas();
                    },
                  ));
                }),
            ListTile(
                leading: Icon(Icons.password),
                title: Text("Gerador de senhas"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return geradorSenha();
                    }),
                  );
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
        title: const Text("Cadastro de cartões"),
      ),
      body: _Body(),
      bottomNavigationBar: BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          // ignore: prefer_const_constructors
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Minha Conta",
            backgroundColor: Color.fromRGBO(241, 241, 241, 1),
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.lock,
            ),
            label: "Senhas",
            backgroundColor: Color.fromRGBO(241, 241, 241, 1),
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.card_membership),
              label: "Cartões",
              backgroundColor: Color.fromRGBO(241, 241, 241, 1)),

          BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: "Favoritos",
              backgroundColor: Color.fromRGBO(241, 241, 241, 1)),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
      ),
    ));
  }
}

Widget fieldDescricao() {
  return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(), labelText: "Descrição"));
}

Widget CartaoFrente(context) {
  return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [cartaoFront(context)],
      ));
}

Widget cartaoFront(context) {
  return Container(
      width: MediaQuery.of(context).size.width * .9,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(148, 16, 136, 0),
      ),
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          TextField(
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Numero",
              )),
          SizedBox(
            height: 20,
          ),
          TextField(
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Validade",
              )),
        ],
      ));
}

Widget CartaoAtras(context) {
  return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [cartaoBack(context)],
      ));
}

Widget cartaoBack(context) {
  return Container(
      width: MediaQuery.of(context).size.width * .9,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(147, 0, 92, 134),
      ),
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            decoration: BoxDecoration(color: Colors.black),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            decoration: BoxDecoration(color: Colors.grey),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
              decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "CVV",
          )),
        ],
      ));
}

Widget fieldSenha() {
  return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: "Senha"));
}

/*Widget fieldCartao1(){
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.all(30),
        padding: const EdgeInsets.all(10),
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black),
          color: Color.fromARGB(148, 16, 136, 0),
        ),

        child:TextField(
            decoration:  InputDecoration( 
            border: OutlineInputBorder(),
            labelText: "Numero",)
         ),

      )
      
    ],
  );
}*/

class _Body extends StatelessWidget {
  bool mostraSenha = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        fieldDescricao(),
        SizedBox(
          height: 20,
        ),
        CartaoFrente(context),
        SizedBox(
          height: 20,
        ),
        CartaoAtras(context),
        SizedBox(
          height: 20,
        ),
        fieldSenha(),
      ],
    );
  }
}
