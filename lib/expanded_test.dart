import 'package:flutter/material.dart';

class ExpandedTest extends StatelessWidget {
  const ExpandedTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double height = 50;

    return Scaffold(
      appBar: AppBar(title: Text("Expanded Test Page"),centerTitle: true,),
      body: Column(
        children: [
          //일반적인 하나만 사용하는 경우
          Container(
            height: height,
            //높이만 지정해 주더라도 문제 없이 사용가능하다.
            color: Colors.red,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("Expanded로 남은 공간 사용하는 방법"),
          ),
          Row(
            children: [
              Container(
                //화면의 0.4배만큼 할당을 시켜줍니다.
                width: MediaQuery.of(context).size.width * 0.4,
                height: height,
                color: Colors.orange,
              ),
              Expanded(
                child: Container(
                  height: height,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("Expanded로 하위 위젯을 비율로 할당하는 법"),
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: height,
                  color: Colors.green,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: height,
                  color: Colors.blue,
                ),
              ),
            ],
          ),Padding(
            padding: const EdgeInsets.all(20),
            child: Text("Expanded로 3개의 위젯에 비율을 할당하는 방법"),
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: height,
                  color: Colors.purple,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: height,
                  color: Colors.pink,
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  height: height,
                  color: Colors.cyan,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
