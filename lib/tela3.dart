import 'package:flutter/material.dart';

class tela3 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Cadastro"),
        ),
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            child: Text("Voltar"),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
      )
    );

    
  }
} 