import 'package:flutter/material.dart';
import 'package:forposting/expanded_test.dart';
import 'package:forposting/rich_text_test.dart';

void main()=>runApp(Practice());


class Practice extends StatelessWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RichTextTest(),
    );
  }
}
