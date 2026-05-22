import 'package:flutter/material.dart';

class Tela3 extends StatelessWidget {
  const Tela3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 250,
            child: Stack(
              children: [
                Container(
                  height: 170,
                  width: double.infinity,
                  color: Colors.blue.shade300,
                ),
                Positioned(
                  top: 120,
                  left: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 56,
                      backgroundColor: Colors.blue.shade400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 200,
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
          Row(
            children: [
              Expanded(child: Container(
                width: 190,
                height: 130,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Colors.blue,
              ),
              ),),
              Expanded(child: Container(
                width: 190,
                height: 130,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Colors.blue,
              ),
              ),),
              Expanded(child: Container(
                width: 190,
                height: 130,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Colors.blue,
              ),
              ),)
            ],
          ),
          Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Colors.blue,
              ),
            ),
          Container(
              width: double.infinity,
              height: 150,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Colors.blue,
              ),
            ),
        ],
      ),
    );
  }
}
