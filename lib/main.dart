import 'package:flutter/material.dart';
import 'package:wallet_dash_board/views/dash_board_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:DashBoardView(),
    );
  }
}