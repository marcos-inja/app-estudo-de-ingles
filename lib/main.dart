import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unki/repositories/conta_repository.dart';
//import 'package:unki/home.dart';
import 'login.page.dart';
import 'package:flutter/material.dart';
//import 'package:unki/pages/home_page.dart';

void main() async {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    ),
  );
}
