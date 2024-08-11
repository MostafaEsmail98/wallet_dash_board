import 'package:flutter/cupertino.dart';

class CardDetailsModel {
  final String title;
  final IconData icon;
  final String id;
  final String date;

  const CardDetailsModel(
      {required this.title,
      required this.icon,
      required this.id,
      required this.date});
}
