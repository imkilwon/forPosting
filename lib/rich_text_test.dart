import 'package:flutter/material.dart';

class RichTextTest extends StatelessWidget {
  const RichTextTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RichText 예시"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.black,
            child: Text(
              "1번 예시",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
          ),

          //----------------1번 예시 RichText -> TextSpan(text 포함한) -> children --------------------
          Center(
            child: RichText(
              text: TextSpan(
                  text: "기획하는",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 45,
                  ),
                  children: [
                    TextSpan(
                      text: "개발",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 50,
                      ),
                    ),
                    TextSpan(
                      text: "자",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 45,
                      ),
                    ),
                  ]),
            ),
          ),
          //----------------------------------------------
          Container(
            color: Colors.black,
            child: Text(
              "1번 예시",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
          ),
          //---------------2번 예시 RichText -> TextSpan (아무것도 포함하지 않음)트리용 -> children --------------
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "기획하는",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 45,
                  ),
                ),
                TextSpan(
                  text: "개발",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 50,
                  ),
                ),
                TextSpan(
                  text: "자",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 45,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
