import 'package:flutter/material.dart';

class BoxFitTest extends StatelessWidget {
  const BoxFitTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Box Fit"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(child: Text("원본 비율을 유지한 채로 박스에 채움(잘리지 않음)",style:TextStyle(fontSize: 18))),
            BoxFitExample(BoxFit.contain, screenSize),
            Divider(color: Colors.black,),
            Center(child: Text("원본 비율을 지키지 않고 박스에 \"가득\"채움(잘리지 않음)",style:TextStyle(fontSize: 17))),
            BoxFitExample(BoxFit.fill, screenSize),
            Divider(color: Colors.black,),
            Center(child: Text("원본 비율을 지키며 가로로 최대로 채움 (위아래가 잘림)",style:TextStyle(fontSize: 17))),
            BoxFitExample(BoxFit.fitWidth, screenSize),
            Divider(color: Colors.black,),
            Center(child: Text("원본 비율을 지키며 세로로 최대로 채움 \n(세로로 긴 비율이여서 잘리지 않고 여백이 있음)",style:TextStyle(fontSize: 17))),
            BoxFitExample(BoxFit.fitHeight, screenSize),
            Divider(color: Colors.black,),
            Center(child: Text("원본 비율을 지키며 가로로 최대로 채움는 것을 선택(위아래가 잘림)",style:TextStyle(fontSize: 17))),
            BoxFitExample(BoxFit.cover , screenSize),
            Divider(color: Colors.black,),
            Center(child: Text("원본 크기와 비율을 건드리지 않고 박스 크기만큼만 보여줌",style:TextStyle(fontSize: 17))),
            BoxFitExample(BoxFit.none, screenSize),
          ],
        ),
      ),
    );
  }

  Widget BoxFitExample(BoxFit option, Size screenSize) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Container(
        width: double.infinity,
        height: screenSize.height / 4,
        child: Image.network(
          'https://cdn.pixabay.com/photo/2022/08/22/10/01/tree-7403295_1280.jpg',
          fit: option,
        ),
      ),
    );
  }
}
