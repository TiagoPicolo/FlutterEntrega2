import 'package:flutter/material.dart';

class tela2 extends StatelessWidget
{
  Widget build(BuildContext context)
    {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text("Tela2"),
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