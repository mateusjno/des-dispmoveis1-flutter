import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Titulo'),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)], 
        backgroundColor: Colors.blue.shade800,
        foregroundColor: Colors.white,
      ),

      drawer: const Drawer(
        child: Center(
          child: Text('Drawer'),
        ),
      ),
      endDrawer: const Drawer(
        child: Center(
          child: Text('Drawer'),
        ),
      ),

      body: Column(
        children: [
          SizedBox(height: 80, child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(8, (_) =>
                Container(
                  width: 64, height: 64,
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    shape: BoxShape.circle,
                  ),
                ),)
            ),
          )),

          Expanded(
            child: Column(
              //PAREIAQUI
            )
          )

        ]
      )

    );
  }
}