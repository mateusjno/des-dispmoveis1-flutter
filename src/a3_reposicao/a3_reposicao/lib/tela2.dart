import 'package:flutter/material.dart';

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          iconTheme: const IconThemeData(color: Colors.white),
          leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
          title: const Text(
            'Meus Itens',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                
              },
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.blue,
          child: Padding(padding: EdgeInsetsGeometry.all(30),
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.home,size: 35, color: Colors.white),
                title: (Text("Inicío",style: TextStyle(color: Colors.white,fontSize: 20
                ),)),
              ),
              ListTile(
                leading: Icon(Icons.person,size: 35, color: Colors.white),
                title: (Text("Perfil",style: TextStyle(color: Colors.white,fontSize: 20
                ),)),
              ),
              ListTile(
                leading: Icon(Icons.message,size: 35, color: Colors.white),
                title: (Text("Mensagens",style: TextStyle(color: Colors.white,fontSize: 20
                ),)),
              ),
              ListTile(
                leading: Icon(Icons.settings,size: 35, color: Colors.white),
                title: (Text("Configurações",style: TextStyle(color: Colors.white,fontSize: 20
                ),)),
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app,size: 35, color: Colors.white),
                title: (Text("Sair",style: TextStyle(color: Colors.white,fontSize: 20
                ),)),
              ),
            ],
          ),
          )
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              title: Text('Item número $index'),
              subtitle: const Text('Subtítulo do item'),
              onTap: () {
                print('Você clicou no item $index');
              },
              trailing: const Icon(
                Icons.chevron_right,
                size: 18,
                color: Colors.blue,
              ),
            );
          },
        ),
      ),
    );
  }
}
