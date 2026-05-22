import 'package:flutter/material.dart';

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 190,
              height: 40,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 150,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    8,
                    (_) => Container(
                      width: 120,
                      height: 150,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 30,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 390,
              child: Expanded(
                child: GridView.count(
                  crossAxisCount: 2, // Define exatamente 2 colunas
                  crossAxisSpacing: 10, // Espaço horizontal entre as colunas
                  mainAxisSpacing: 10, // Espaço vertical entre as linhas
                  padding: const EdgeInsets.all(16),
                  children: List.generate(
                    8,
                    (_) => Container(
                      width: 90,
                      height: 350,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 30,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
