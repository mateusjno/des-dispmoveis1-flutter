import 'package:flutter/material.dart';

class Tela6 extends StatelessWidget {
  const Tela6({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 180,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ],
            ),
            Row(
              children: List.generate(
                4,
                (_) => Expanded(
                  child: Container(
                    width: 120,
                    height: 90,
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
            width: 170,
            height: 20,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue.shade300,
              borderRadius: BorderRadius.circular(4), 
            ),
          ),
          Container(
            width: 200,
            height: 20,
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.blue.shade300,
              borderRadius: BorderRadius.circular(4), 
            ),
          ),
          Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 180,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
            width: double.infinity,
            height: 50,
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
