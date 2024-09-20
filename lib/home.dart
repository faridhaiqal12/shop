import 'package:flutter/material.dart';
import 'package:shop/album.dart';
import 'package:shop/tabs/tabs1.dart';

class Home extends StatelessWidget {
  List<Tab> myTab = [
    const Tab(
      text: "tes",
    ),
    const Tab(
      text: "tes",
    ),
    const Tab(
      text: "tes",
    ),
  ];

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 105, 107, 10.0),
        title: const Text(
          "MarSHOP",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      drawer: Drawer(
        shape: Border.all(color: Colors.transparent),
        child: Column(
          children: [
            Container(
              height: 80,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(0, 105, 107, 10.0),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      leading: const Icon(
                        Icons.home,
                        color: Color.fromRGBO(0, 92, 120, 10.0),
                        size: 30,
                      ),
                      title: const Text(
                        "HOME",
                        style: TextStyle(
                            color: Color.fromRGBO(0, 92, 120, 10.0),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const Album();
                          },
                        ));
                      },
                      leading: const Icon(
                        Icons.photo_library_rounded,
                        color: Color.fromRGBO(0, 92, 120, 10.0),
                        size: 30,
                      ),
                      title: const Text(
                        "ALBUM",
                        style: TextStyle(
                            color: Color.fromRGBO(0, 92, 120, 10.0),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const Album();
                          },
                        ));
                      },
                      leading: const Icon(
                        Icons.person,
                        color: Color.fromRGBO(0, 92, 120, 10.0),
                        size: 30,
                      ),
                      title: const Text(
                        "PROFILE",
                        style: TextStyle(
                            color: Color.fromRGBO(0, 92, 120, 10.0),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Container(
                    height: 200,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/montain.png"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: const ListTile(
                      leading: Icon(
                        Icons.image,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Album",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
              PreferredSize(
                  preferredSize: const Size.fromHeight(10),
                  child: DefaultTabController(
                      length: 3,
                      child: TabBar(
                        dividerColor: Colors.transparent,
                        unselectedLabelStyle: const TextStyle(fontSize: 12),
                        tabs: myTab,
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelStyle: const TextStyle(color: Colors.white),
                        indicatorWeight: 10,
                        padding: const EdgeInsets.all(10),
                        // indicatorColor: Color.fromRGBO(0, 97, 120, 10),
                        indicator: const BoxDecoration(
                            color: Color.fromRGBO(0, 97, 120, 29),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                      ))),
              const TabBarView(children: [])
            ],
          ),
        ],
      ),
    );
  }
}
