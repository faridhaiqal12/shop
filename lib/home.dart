import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MarShop"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
            ),
            Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        TextButton(onPressed: () {}, child: Text("HOME"))
                      ],
                    ),
                    Row(
                      children: [
                        TextButton(onPressed: () {}, child: Text("HOME"))
                      ],
                    ),
                    Row(
                      children: [
                        TextButton(onPressed: () {}, child: Text("HOME"))
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}
