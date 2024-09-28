import 'package:flutter/material.dart';

class Times extends StatelessWidget {
  final String aOrB;
  final String timeName;
  const Times({super.key, required this.aOrB, required this.timeName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          CircleAvatar(
          radius: 20,
          backgroundColor: const Color(0xffC2F2F8),
          child: Text(
            aOrB,
            style: const TextStyle(
              color: Color(0xff2B4A8E),
              fontSize: 20, 
              fontWeight: FontWeight.bold,
              fontFamily: 'ConcertOne',
            ),
          ),
          ),
            Text(
              timeName,
              style: const TextStyle(
                fontSize: 25, 
                fontFamily: 'ConcertOne',
                color: Color(0xff2B4A8E), 
              ),
            ),
        ],
      ),
    );
  }
}