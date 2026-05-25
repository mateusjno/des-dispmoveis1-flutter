import 'package:a3_reposicao/tela2.dart';
import 'package:flutter/material.dart';

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 50,
                    color: Colors.blue,
                  ),
                  SizedBox(height: 110),
                  CircleAvatar(
                    radius: 90,
                    backgroundImage: NetworkImage(
                      'https://img.magnific.com/psd-gratuitas/ilustracao-3d-de-avatar-ou-perfil-humano_23-2150671116.jpg',
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Bem vindo!",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 35),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Pronto para começar?",
                    style: TextStyle(fontWeight: FontWeight.w200, fontSize: 20),
                  ),
                  Text(
                    "Aperte começar!",
                    style: TextStyle(fontWeight: FontWeight.w200, fontSize: 20),
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Tela2(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 70),
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Começar',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
