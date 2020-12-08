import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  File _image;

  Future getImage() async{
    final image= await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image  ;
    });


  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image App'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            _image == null ?  Center(child: Text('image here')): Image.file(_image),
            SizedBox(
              height: 40,
            ),
            if(_image != null)
              Text('DESINGER SAREES FOR WOMEN',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.lightBlue,fontSize: 20.0),),



          ],





        ),





        floatingActionButton: FloatingActionButton(
          onPressed: getImage,
          child: Icon(Icons.camera_alt),


        ),









      ),





    );
  }
}
