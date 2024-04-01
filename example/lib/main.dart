import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:imagecollage/imagecollage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<XFile> _image=[];
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: false),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: _image.length!=0?ImageCollage(images: _image,
            ):Text(("dhjvs")),




        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final pickedFile =await picker.pickMultiImage();
               // await picker.pickImage(source: ImageSource.gallery);

            setState(() {
              if (pickedFile.length!=0) {
                _image.addAll(pickedFile);
                // Navigator.push(context, MaterialPageRoute(builder: (context){
                //   return BuildCollage(images: _image);
                // }));
              }
            });
          },
        ),
      ),
    );
  }
}
class BuildCollage extends StatefulWidget {
  final  List<XFile> images;
  const BuildCollage({Key? key,required this.images}) : super(key: key);

  @override
  State<BuildCollage> createState() => _BuildCollageState();
}

class _BuildCollageState extends State<BuildCollage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Collage"),),
      body: ImageCollage(images: widget.images),
    );
  }
}
