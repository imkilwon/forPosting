import 'package:flutter/material.dart';

class FirebaseStorage extends StatefulWidget {
  const FirebaseStorage({Key? key}) : super(key: key);

  @override
  State<FirebaseStorage> createState() => _FirebaseStorageState();
}

class _FirebaseStorageState extends State<FirebaseStorage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase Storage")
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){}, child: Text(""))
        ],
      )
    );
  }
}
