import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: const Color(0xff2B4A8E),
      shape: const CircleBorder(),
      mini: true,
      child: const Icon(
        Icons.add,
        color: Colors.white, size: 23,
      ),
    );
  }
}