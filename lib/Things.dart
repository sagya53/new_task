import 'package:flutter/material.dart';

import 'AddFavoriteThings.dart';

class Things extends StatefulWidget {
  const Things({Key? key}) : super(key: key);

  @override
  State<Things> createState() => _ThingsState();
}

class _ThingsState extends State<Things> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Things",style: TextStyle(color: Color(0xFF000000)),),
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        actions: [
          InkWell(
          onTap: (){
    Navigator.pushReplacement(
    context,MaterialPageRoute(builder: (context) => AddFavoriteThings ()),);
    },
              child: Icon(Icons.add)),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          )
        ],
      ),
      drawer: Drawer(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.black12,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    Flexible(
                      child: TextFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0.0),
                          hintText: 'Search',
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                        // style: TextStyle(
                        //   color: Colors.black26,
                        //   fontSize: 12.0,
                        // ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.727,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, position) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.red,
                    ),
                    title: Text("Titles"),
                    subtitle: Text("number"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  );
                },
              ),
            ),
          ],
        ),
      ),
);
  }
}
