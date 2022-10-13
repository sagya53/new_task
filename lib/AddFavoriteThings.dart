import 'dart:io';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:new_task/Things.dart';

class AddFavoriteThings extends StatefulWidget {
  const AddFavoriteThings({Key? key}) : super(key: key);

  @override
  State<AddFavoriteThings> createState() => _AddFavoriteThingsState();
}

class _AddFavoriteThingsState extends State<AddFavoriteThings> {
  ImagePicker picker = ImagePicker();
  XFile? image;
  // _getFromGallery() async {
  //   PickedFile pickedFile = await ImagePicker().getImage(
  //     source: ImageSource.gallery,
  //     maxWidth: 1800,
  //     maxHeight: 1800,
  //   );
  //   if (pickedFile != null) {
  //     setState(() {
  //       imageFile = File(pickedFile.path);
  //     });
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(top: 16.0,left: 7.0),
          child: InkWell(
              onTap: (){
                Navigator.pushReplacement(
                  context,MaterialPageRoute(builder: (context) => Things ()),);
              },
              child: Text("Cancel",style: TextStyle(color: Colors.red,fontSize: 20),textAlign: TextAlign.center,)),
        ),
        title: Text("Add Favorite Thing",style: TextStyle(color: Colors.black),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0,right: 7.0),
            child: Text("Add",style: TextStyle(color: Colors.red[300],fontSize: 20),textAlign: TextAlign.center,),
          ),
          // SizedBox(
          //   width: 20,
          // )
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Name",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                    Text("Required",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.black12,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0.0),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Picture",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                    Text("Required",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                  ],
                ),
                InkWell(
                onTap: () async {
    image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
    //update UI
    });
    },
    child: Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.black12,
      ),
      child: Center(
        child: ListTile(
          leading: Icon(Icons.image),
          title: Text("Choose an image..."),
        ),
      ),
    ),
    ),

    image == null?Container():
    Image.file(File(image!.path),

                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Quantity",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                    Text("Required",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.black12,
                  ),
                  child: Text("100")
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Category",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                    Text("Required",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Chip(
                      elevation: 0,
                      padding: EdgeInsets.all(8),
                      backgroundColor: Colors.black12,
                      shadowColor: Colors.black,
                      label: Text(
                        'Blocks',
                        style: TextStyle(fontSize: 20),
                      ), //Text
                    ),
                    Chip(
                      elevation: 0,
                      padding: EdgeInsets.all(8),
                      backgroundColor: Colors.black12,
                      shadowColor: Colors.black,
                      label: Text(
                        'Clouds',
                        style: TextStyle(fontSize: 20),
                      ), //Text
                    ),
                    Chip(
                      elevation: 0,
                      padding: EdgeInsets.all(8),
                      backgroundColor: Colors.black12,
                      shadowColor: Colors.black,
                      label: Text(
                        'Prisms',
                        style: TextStyle(fontSize: 20),
                      ), //Text
                    ),
                  ],
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}
