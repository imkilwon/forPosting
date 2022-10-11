import 'package:flutter/material.dart';
import 'package:forposting/use_font.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Practice());
}


class Practice extends StatelessWidget {
  const Practice({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: UseFont(),
    );
  }
}
