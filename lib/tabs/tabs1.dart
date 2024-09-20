import 'package:flutter/material.dart';

class Tabs1 extends StatelessWidget {
  const Tabs1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [Column(
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            )
          ],
        ),]
      ),
    );
  }
}
