import 'package:flutter/material.dart';

class UseFont extends StatelessWidget {
  const UseFont({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Use Font")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Thin Style", style:TextStyle(fontFamily: "NotoSans",fontWeight: FontWeight.w200,fontSize: 15)),
          Text("Light Style", style:TextStyle(fontFamily: "NotoSans",fontWeight: FontWeight.w300,fontSize: 15)),
          Text("Regular Style", style:TextStyle(fontFamily: "NotoSans",fontWeight: FontWeight.w400,fontSize: 15)),
          Text("Medium Style", style:TextStyle(fontFamily: "NotoSans",fontWeight: FontWeight.w500,fontSize: 15)),
          Text("Bold Style", style:TextStyle(fontFamily: "NotoSans",fontWeight:FontWeight.w700,fontSize: 15)),
          Text("Black Style", style:TextStyle(fontFamily: "NotoSans",fontWeight: FontWeight.w900,fontSize: 15)),
        ],
      ),
    );
  }
}
