import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:konko_maji/nevigation%20bar.dart';
import 'package:konko_maji/passions.dart';
import 'package:konko_maji/profile.dart';

import 'Circlebox.dart';
import 'friends.dart';
import 'messages.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: passions()
    );
  }
}



