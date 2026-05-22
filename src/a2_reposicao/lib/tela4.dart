import 'package:flutter/material.dart';

class Tela4 extends StatelessWidget {
  const Tela4({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 40,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue.shade300,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            SizedBox(
              child: Row(
                children: List.generate(
                  4,
                  (_) => Expanded(
                    child: Container(
                      width: 120,
                      height: 75,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: List.generate(
                2,
                (_) => Expanded(
                  child: Container(
                    width: 120,
                    height: 150,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade300,
                      borderRadius: BorderRadius.circular(4),
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
                color: Colors.blue.shade300,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            SizedBox(
              child: Expanded(
                child: Container(
                  width: double.infinity,
                  height: 300,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
