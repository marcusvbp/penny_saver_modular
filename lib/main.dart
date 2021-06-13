import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:penny_saver/app/models/conta_model.dart';
import 'package:penny_saver/app/models/source_model.dart';
import 'package:penny_saver/app/models/transacao_model.dart';
import 'package:penny_saver/app_modular.dart';

void main() {
  Hive.registerAdapter(TransacaoAdapter());
  Hive.registerAdapter(ContaAdapter());
  Hive.registerAdapter(SourceAdapter());

  runApp(ModularApp(module: AppModule(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Penny Saver',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
    ).modular();
  }
}
