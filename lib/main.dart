import 'package:flutter/material.dart';
import 'package:flutter_chat_with_socket_io/screens/login.dart';
import 'package:provider/provider.dart';

import 'providers/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Socket.IO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) => LoginProvider(),
        child: const LoginScreen(),
      ),
    );
  }
}
