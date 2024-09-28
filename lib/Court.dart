import 'package:flutter/material.dart';

class Court extends StatelessWidget {
  const Court ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
        color: const Color(0xffF77859), 
        border: Border.all(color: Colors.white, width: 3),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                border: Border(
                  right: BorderSide(color: Colors.white, width: 3), 
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('imagens/ball.png'),
                  ),
                  Text(
                    '12',
                    style: TextStyle(
                      fontFamily: 'ConcertOne',
                      fontSize: 80,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: const Text(
                '22',
                style: TextStyle(
                  fontFamily: 'ConcertOne',
                  fontSize: 80,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}