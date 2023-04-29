import 'package:flutter/material.dart';


class SquareTileComponent extends StatelessWidget {

  final Icon icon;
  const SquareTileComponent({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {

      return Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey[200]
        ),
        child: icon
      );
  }

}