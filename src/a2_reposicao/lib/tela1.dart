import 'package:flutter/material.dart';

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tela1'),
          centerTitle: true,
          backgroundColor: Colors.blue.shade800,
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index){
           return Card(
            margin: const EdgeInsets.all(2.0),
            child: ListTile(
            leading: const Icon(Icons.add_business,size: 50, color: Colors.blue),
            title: Text('Card número $index'),
            subtitle: const Text('Descrição do Item ABCDEFGHIJKLMNOPQRSTUVWXYZ'),
            )
           );
          }  
        ),
      ),
    );
  }
}
