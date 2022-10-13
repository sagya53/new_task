import 'package:flutter/material.dart';
import 'package:new_task/Things.dart';

import 'Categories.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int pageIndex = 0;

  final pages = [
    const Things(),
    const Categories(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffC4DFCB),
        // appBar: AppBar(
        //   elevation: 0,
        //   iconTheme: IconThemeData(color: Colors.black),
        //   title: Text("Things",style: TextStyle(color: Color(0xFF000000)),),
        //   backgroundColor: Color(0xFFFFFFFF),
        //   centerTitle: true,
        //   actions: [
        //     Icon(Icons.add),
        //     SizedBox(
        //       width: MediaQuery.of(context).size.width * 0.05,
        //     )
        //   ],
        // ),
        // drawer: Drawer(),
        body: pages[pageIndex],
        bottomNavigationBar: buildMyNavBar(context),
      ),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 61,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: const BorderRadius.only(
          // topLeft: Radius.circular(20),
          // topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                icon: pageIndex == 0
                    ? const Icon(
                  Icons.dashboard,
                  color: Colors.red,
                  size: 30,

                )

                    : const Icon(
                  Icons.dashboard_outlined,
                  color: Colors.grey,
                  size: 30,
                ),
              ),
             pageIndex == 0 ? Text("Things",style: TextStyle(color: Colors.red),)
                 :
             Text("Things",style: TextStyle(color: Colors.grey),),
            ],
          ),

          Column(
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                icon: pageIndex == 1
                    ? const Icon(
                  Icons.folder,
                  color: Colors.red,
                  size: 35,
                )
                    : const Icon(
                  Icons.folder_open_outlined,
                  color: Colors.grey,
                  size: 35,
                ),
              ),
              pageIndex == 1 ? Text("Categories",style: TextStyle(color: Colors.red),)
                  :
              Text("Categories",style: TextStyle(color: Colors.grey),),
            ],
          ),

        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 2",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

}