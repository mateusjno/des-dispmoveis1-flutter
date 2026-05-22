import 'package:flutter/material.dart';

class Tela5 extends StatelessWidget {
  const Tela5({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          //principal
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade300,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  height: 40,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ],
            ),
            SizedBox(
              child: Expanded(
                child: SingleChildScrollView(
                  child: Wrap(
                    children: List.generate(
                      6,
                      (_) => Expanded(
                        child: Container(
                          width: 100,
                          height: 150,
                          margin: EdgeInsets.all(10),
                          alignment: Alignment.bottomCenter,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade300,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 40,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 142, 200, 248),
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 60,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade300,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 40,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue.shade300,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
