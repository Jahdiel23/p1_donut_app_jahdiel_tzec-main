import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  const MyTab({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
   return Tab(
    child: Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
      color: Colors.grey[600],
      borderRadius: BorderRadius.circular(12),
      ),
      child: Image.asset(iconPath, color: Colors.grey[600],),) ,);
  }


}